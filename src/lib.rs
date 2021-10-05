// extern crate console_error_panic_hook;
extern crate wasm_bindgen;
extern crate web_sys;

use std::cell::RefCell;
use std::panic;

use wasm_bindgen::prelude::*;

use calcit_runner::{load_core_snapshot, program, runner, snapshot, Calcit};

pub fn eval_code(snippet: String) -> Result<Calcit, String> {
  // panic::set_hook(Box::new(console_error_panic_hook::hook));
  program::clear_all_program_evaled_defs("app.main/main!", "app.main/reload!", false)?;

  let core_snapshot = load_core_snapshot()?;
  let mut snapshot = snapshot::gen_default(); // placeholder data
  match snapshot::create_file_from_snippet(&snippet) {
    Ok(main_file) => {
      snapshot.files.insert(String::from("app.main"), main_file);
    }
    Err(e) => panic!("failed snapshot: {}", e),
  }
  // attach core
  for (k, v) in core_snapshot.files {
    snapshot.files.insert(k.to_owned(), v.to_owned());
  }

  let program_code = program::extract_program_data(&snapshot)?;
  let check_warnings: &RefCell<Vec<String>> = &RefCell::new(vec![]);

  // make sure builtin classes are touched
  runner::preprocess::preprocess_ns_def(
    calcit_runner::primes::CORE_NS,
    calcit_runner::primes::BUILTIN_CLASSES_ENTRY,
    &program_code,
    calcit_runner::primes::BUILTIN_CLASSES_ENTRY,
    None,
    check_warnings,
  )?;

  let v = calcit_runner::run_program("app.main/main!", im::vector![], &program_code)?;

  // web_sys::console::log_1(&JsValue::from_str(&format!("Result: {}", v)));
  // JsValue::from_str(&format!("Result: {}", v))
  Ok(v)
}

#[wasm_bindgen]
pub fn run_code(snippet: String) -> String {
  match eval_code(snippet) {
    Ok(v) => format!("{}", v),
    Err(e) => {
      format!("Error: {}", e)
    }
  }
}
