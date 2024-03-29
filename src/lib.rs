extern crate console_error_panic_hook;
extern crate wasm_bindgen;
extern crate web_sys;

use std::cell::RefCell;
use std::panic;

use wasm_bindgen::prelude::*;

use calcit::{
  calcit::LocatedWarning,
  call_stack::CallStackList,
  load_core_snapshot, program, runner,
  snapshot::{self, Snapshot},
  Calcit, CalcitErr,
};

pub fn eval_code(snippet: String) -> Result<Calcit, String> {
  panic::set_hook(Box::new(console_error_panic_hook::hook));
  program::clear_all_program_evaled_defs("app.main/main!".into(), "app.main/reload!".into(), false)?;

  let core_snapshot = load_core_snapshot()?;
  let mut snapshot = Snapshot::default(); // placeholder data
  match snapshot::create_file_from_snippet(&snippet) {
    Ok(main_file) => {
      snapshot.files.insert("app.main".into(), main_file);
    }
    Err(e) => {
      web_sys::console::log_1(&JsValue::from_str(&format!("[Error] bad snapshot: {}", e)));
      panic!("failed snapshot: {}", e)
    }
  }
  // attach core
  for (k, v) in core_snapshot.files {
    snapshot.files.insert(k.to_owned(), v.to_owned());
  }

  // overwrite global states
  {
    let mut prgm = { program::PROGRAM_CODE_DATA.write().unwrap() };
    *prgm = program::extract_program_data(&snapshot)?;
  }

  let check_warnings: &RefCell<Vec<LocatedWarning>> = &RefCell::new(vec![]);

  // make sure builtin classes are touched
  runner::preprocess::preprocess_ns_def(
    calcit::calcit::CORE_NS,
    calcit::calcit::BUILTIN_CLASSES_ENTRY,
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

  Ok(Calcit::Nil)
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

  Ok(Calcit::Nil)
}

#[wasm_bindgen]
pub fn run_code(snippet: String) -> String {
  calcit::builtins::register_import_proc("println", console_log);
  calcit::builtins::register_import_proc("eprintln", console_error);
  calcit::builtins::register_import_proc("echo", console_log);

  match eval_code(snippet) {
    Ok(v) => format!("{}", v),
    Err(e) => {
      format!("Error: {}", e)
    }
  }
}
