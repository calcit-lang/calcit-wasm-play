// extern crate console_error_panic_hook;
extern crate wasm_bindgen;
extern crate web_sys;

use std::cell::RefCell;
use std::panic;

use wasm_bindgen::prelude::*;

use calcit_runner::{load_core_snapshot, program, runner, snapshot};

#[wasm_bindgen]
pub fn run_code(snippet: String) -> String {
  // panic::set_hook(Box::new(console_error_panic_hook::hook));
  program::clear_all_program_evaled_defs("app.main/main!", "app.main/reload!", false).unwrap();

  let core_snapshot = load_core_snapshot().unwrap();
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

  let program_code = program::extract_program_data(&snapshot).unwrap();
  let check_warnings: &RefCell<Vec<String>> = &RefCell::new(vec![]);

  // make sure builtin classes are touched
  runner::preprocess::preprocess_ns_def(
    calcit_runner::primes::CORE_NS,
    calcit_runner::primes::BUILTIN_CLASSES_ENTRY,
    &program_code,
    calcit_runner::primes::BUILTIN_CLASSES_ENTRY,
    None,
    check_warnings,
  )
  .unwrap();

  let v = calcit_runner::run_program("app.main/main!", im::vector![], &program_code).unwrap();

  // web_sys::console::log_1(&"Hello, world!".into());
  // web_sys::console::log_1(&JsValue::from_str(&format!("Result: {}", v)));
  // JsValue::from_str(&format!("Result: {}", v))
  v.to_string()
}
