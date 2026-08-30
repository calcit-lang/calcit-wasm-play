## Calcit WASM playground

Demo http://repo.calcit-lang.org/calcit-wasm-play/

This project embeds the Calcit runtime in WebAssembly and provides an in-browser
playground for evaluating small Calcit programs. The application UI is built
with Respo, while the evaluator itself runs locally in the browser without a
server round trip.

The Rust `calcit` crate, `deps.cirru` toolchain, and `@calcit/procs` package are
kept on the same Calcit release. Calcit modules in `deps.cirru` use released
tags so that CI and local builds resolve a reproducible dependency graph.

### Development

Install the Calcit modules and verify the lockstep toolchain:

```bash
caps --ci --strict
caps verify --toolchain
```

Build the embedded runtime:

```bash
wasm-pack build -t web
```

Serve page:

```bash
yarn
yarn vite
```

Validate the Calcit application before publishing:

```bash
calcit calcit.cirru --check-only
calcit calcit.cirru analyze deprecated --summary-only --format json
calcit calcit.cirru js
yarn vite build --base=./
```

### 中文说明

本项目将 Calcit runtime 编译进 WebAssembly，在浏览器内直接执行小段
Calcit 程序；界面使用 Respo 构建。Rust crate、`deps.cirru` 与
`@calcit/procs` 保持同一 Calcit 版本，模块依赖固定到已发布 tag，确保
本地与 CI 的解析结果可复现。

### License

MIT
