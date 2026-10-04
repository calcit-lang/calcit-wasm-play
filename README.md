## Calcit WASM playground

Demo http://repo.calcit-lang.org/calcit-wasm-play/

This project embeds the Calcit runtime in WebAssembly and provides an in-browser
playground for evaluating small Calcit programs. The application UI is built
with Respo, while the evaluator itself runs locally in the browser without a
server round trip.

The frontend `deps.cirru` toolchain and `@calcit/procs` package use published
Calcit 0.27.0. The embedded Rust evaluator still pins `calcit =0.18.1`;
upgrading that runtime and the full frontend to published 0.28 remains separate
migration work, not a completed lockstep upgrade. Module dependencies use
released tags, including existing alpha tags; this does not claim an all-stable
dependency graph.

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
使用正式 0.27.0，内嵌 Rust evaluator 仍固定 0.18.1；不能声称版本已同步或完成
0.28 升级。模块使用已发布 tag，现有 alpha 依赖另行迁移。

CI 只把前端 `dist/` 上传到 COS，使用 Action 1.2 自身的 verify，不增加上传校验脚本。
PR 的 CDN 路径按 PR number / run / attempt 隔离；各 PR 与生产分别排队、不取消在途上传。
生产发布前查询一次 main HEAD，过期运行跳过 COS 和服务器发布、查询失败则终止。
原生产 COS prefix 与 `dist/*` 服务器路径不变，Rust/WASM 源码不作为 COS 资源迁移。
严格入口、完整 public、原质量 baseline 和 Rust/WASM 构建保留；移除四份没有失败条件的
重复清单，不增加测试、compiler fix/proof 或 preset。

### License

MIT
