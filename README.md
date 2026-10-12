## Calcit WASM playground

Demo http://repo.calcit-lang.org/calcit-wasm-play/

This project embeds the Calcit runtime in WebAssembly and provides an in-browser
playground for evaluating small Calcit programs. The application UI is built
with Respo, while the evaluator itself runs locally in the browser without a
server round trip.

The migration candidate pairs frontend `deps.cirru` and `@calcit/procs` at
published Calcit 0.29.1 with a strict, all-formal Respo/UI/Reel/js-ffi graph.
Unused template dependencies have been removed after reviewing every namespace.
The frontend entry targets JS/browser. Application type migration is still in
progress, and the embedded Rust evaluator still pins `calcit =0.18.1`; this is
not yet a completed or validated lockstep runtime upgrade.

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
calcit calcit.cirru --strict-types --warn-dyn-method --check-only
calcit calcit.cirru js
yarn vite build --base=./
```

### 中文说明

本项目将 Calcit runtime 编译进 WebAssembly，在浏览器内直接执行小段
Calcit 程序；界面使用 Respo 构建。前端 `deps.cirru` 与 `@calcit/procs`
迁移候选配对正式 0.29.1，保留实际使用的四个模块并使用一致的正式版本，
不再保留模板遗留依赖或 alpha。应用类型迁移仍未完成；内嵌 Rust evaluator
仍固定 0.18.1，不能声称前后两个 runtime 已同步或通过完整构建。

CI 只把前端 `dist/` 上传到 COS，使用 Action 1.2 自身的 verify，不增加上传校验脚本。
PR 的 CDN 路径按 PR number / run / attempt 隔离；各 PR 与生产分别排队、不取消在途上传。
生产发布前查询一次 main HEAD，过期运行跳过 COS 和服务器发布、查询失败则终止。
原生产 COS prefix 与 `dist/*` 服务器路径不变，Rust/WASM 源码不作为 COS 资源迁移。
严格入口、完整 public、原质量 baseline 和 Rust/WASM 构建保留；移除四份没有失败条件的
重复清单，不增加测试、compiler fix/proof 或 preset。

### License

MIT
