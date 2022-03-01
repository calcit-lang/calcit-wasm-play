extern crate calcit_wasm_play;

use calcit_wasm_play::run_code;

fn main() -> Result<(), String> {
  let code = "+ 1 2 3".into();
  println!("code: {}", run_code(code));
  Ok(())
}
