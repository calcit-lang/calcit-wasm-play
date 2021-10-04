import init, { run_code } from "./pkg/calcit_wasm_play";
import { codearea } from "@mvc-works/codearea";

init().then((w) => {
  console.log("loaded", w);
});

window.addEventListener("load", (event) => {
  let codeEl = document.querySelector(".code");
  let resultEl = document.querySelector(".result");
  codearea(codeEl);

  document.querySelector(".run").addEventListener("click", (event) => {
    let code = codeEl.value;

    console.log("code:", code);

    resultEl.innerText = "";
    let start = performance.now();

    let result = run_code(code);

    // console.log("result", result);
    let cost = performance.now() - start;

    resultEl.innerText = result + "\n\n" + cost + "ms";
  });
});
