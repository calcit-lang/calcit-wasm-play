extern crate console_error_panic_hook;
extern crate wasm_bindgen;
extern crate web_sys;

use std::cell::RefCell;
use std::panic;
use std::sync::{Arc, Once};

use wasm_bindgen::prelude::*;

use calcit::{
  Calcit, CalcitErr, CalcitTypeAnnotation, ProcTypeSignature,
  builtins::{RegisteredProcDescriptor, proc_tags},
  calcit::LocatedWarning,
  call_stack::CallStackList,
  load_core_snapshot, program, runner,
  snapshot::{self, Snapshot},
};

pub fn eval_code(snippet: String) -> Result<Calcit, String> {
  panic::set_hook(Box::new(console_error_panic_hook::hook));

  let core_snapshot = load_core_snapshot()?;
  let mut snapshot = Snapshot::default(); // placeholder data
  let main_file = snapshot::create_file_from_snippet(&snippet).map_err(|error| format!("Bad snapshot: {error}"))?;
  snapshot.files.insert("app.main".into(), main_file);
  // attach core
  for (k, v) in core_snapshot.files {
    snapshot.files.insert(k.to_owned(), v.to_owned());
  }

  // overwrite global states
  {
    let mut prgm = { program::PROGRAM_CODE_DATA.write().unwrap() };
    *prgm = program::extract_program_data(&snapshot)?;
  }
  program::clear_runtime_caches_for_reload("app.main".into(), "app.main".into(), true)?;

  let check_warnings: &RefCell<Vec<LocatedWarning>> = &RefCell::new(vec![]);

  // make sure builtin classes are touched
  runner::preprocess::ensure_ns_def_compiled(
    calcit::calcit::CORE_NS,
    calcit::calcit::BUILTIN_IMPLS_ENTRY,
    check_warnings,
    &CallStackList::default(),
  )
  .map_err(|e| detailed_error(&e))?;

  let v = calcit::run_program("app.main".into(), "main!".into(), &[]).map_err(|e| detailed_error(&e))?;

  // web_sys::console::log_1(&JsValue::from_str(&format!("Result: {}", v)));
  // JsValue::from_str(&format!("Result: {}", v))
  Ok(v)
}

fn detailed_error(e: &CalcitErr) -> String {
  e.msg.trim().to_owned() + "\n" + &e.warnings.iter().map(|w| format!("{}", w)).collect::<Vec<_>>().join("")
}

pub fn console_log(xs: Vec<Calcit>, _call_stack: &CallStackList) -> Result<Calcit, CalcitErr> {
  let mut buffer = String::from("");
  for (idx, x) in xs.iter().enumerate() {
    if idx > 0 {
      buffer.push(' ');
    }
    buffer.push_str(&x.turn_string());
  }
  web_sys::console::log_1(&JsValue::from_str(&buffer));

  let args = js_sys::Array::new();
  args.push(&JsValue::from_str(&buffer));
  // use reflect to get a javascript function
  let f: js_sys::Function = js_sys::Reflect::get(&web_sys::window().unwrap(), &JsValue::from_str("_calcit_log"))
    .unwrap()
    .into();
  js_sys::Reflect::apply(&f, &JsValue::null(), &args).unwrap();

  Ok(Calcit::Unit)
}

pub fn console_error(xs: Vec<Calcit>, _call_stack: &CallStackList) -> Result<Calcit, CalcitErr> {
  let mut buffer = String::from("");
  for (idx, x) in xs.iter().enumerate() {
    if idx > 0 {
      buffer.push(' ');
    }
    buffer.push_str(&x.turn_string());
  }
  web_sys::console::error_1(&JsValue::from_str(&buffer));

  let args = js_sys::Array::new();
  args.push(&JsValue::from_str(&buffer));
  // use reflect to get a javascript function
  let f: js_sys::Function = js_sys::Reflect::get(&web_sys::window().unwrap(), &JsValue::from_str("_calcit_error"))
    .unwrap()
    .into();
  js_sys::Reflect::apply(&f, &JsValue::null(), &args).unwrap();

  Ok(Calcit::Unit)
}

#[wasm_bindgen]
pub fn run_code(snippet: String) -> String {
  static REGISTER_LOG_PROCS: Once = Once::new();
  REGISTER_LOG_PROCS.call_once(|| {
    let descriptor = RegisteredProcDescriptor {
      type_signature: Some(ProcTypeSignature {
        arg_types: vec![Arc::new(CalcitTypeAnnotation::Variadic(calcit::calcit::DYNAMIC_TYPE.clone()))],
        return_type: Arc::new(CalcitTypeAnnotation::Unit),
      }),
      tags: proc_tags(["log", "io"]),
      ..Default::default()
    };
    calcit::builtins::register_import_proc_with_descriptor("println", console_log, descriptor.clone());
    calcit::builtins::register_import_proc_with_descriptor("eprintln", console_error, descriptor.clone());
    calcit::builtins::register_import_proc_with_descriptor("echo", console_log, descriptor);
  });

  match eval_code(snippet) {
    Ok(v) => format!("{}", v),
    Err(e) => {
      format!("Error: {}", e)
    }
  }
}
