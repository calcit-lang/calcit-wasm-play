let codeEl = document.querySelector(".code");
let resultEl = document.querySelector(".result");

window._calcit_log = (content) => {
  resultEl.innerText = resultEl.innerText + "\n" + content;
};
window._calcit_error = (content) => {
  resultEl.innerText = resultEl.innerText + "\n" + content;
};

import init, { run_code } from "../pkg/calcit_wasm_play";
import { codearea } from "@mvc-works/codearea";

codearea(codeEl);

init().then((w) => {
  console.log("loaded", w);
});

let run = () => {
  let code = codeEl.value;

  // console.log("code:", code);
  // console.clear();

  resultEl.innerText = "";
  let start = performance.now();

  let result = run_code(code);

  // console.log("result", result);
  let cost = performance.now() - start;

  resultEl.innerText =
    resultEl.innerText + "\n\n" + result + "\n\n" + cost + "ms";
};

document.querySelector(".run").addEventListener("click", run);

codeEl.addEventListener("keydown", (event) => {
  if (event.keyCode === 13 && event.metaKey && event.shiftKey) {
    run();
    event.preventDefault();
  }
});
