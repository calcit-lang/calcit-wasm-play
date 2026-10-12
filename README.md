## Calcit WASM playground

Demo http://repo.calcit-lang.org/calcit-wasm-play/

This project embeds the Calcit runtime in WebAssembly and provides an in-browser
playground for evaluating small Calcit programs. The application UI is built
with Respo, while the evaluator itself runs locally in the browser without a
server round trip.

The migration candidate pairs frontend `deps.cirru` and `@calcit/procs` at
published Calcit 0.29.1 with a strict, all-formal Respo/UI/Reel/js-ffi graph.
Unused template dependencies have been removed after reviewing every namespace.
The frontend entry targets JS/browser, and the embedded Rust evaluator also
pins published `calcit =0.29.1`. Its browser WASM package builds successfully;
all five built-in snippets run consecutively in that package with simulated
browser log callbacks under Node. Host log procs register once per instance,
as required by the current registration API. Examples now use typed Structs,
typed map-entry decisions, and list methods instead of retired record syntax
and legacy aliases. This is evaluator evidence, not browser UI acceptance.
Application type migration and browser acceptance are still in progress.

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
不再保留模板遗留依赖或 alpha。内嵌 Rust evaluator 同步固定正式 0.29.1，
实际 WASM 构建通过，五个内置示例在 Node 日志回调模拟环境连续执行通过。
日志 proc 每个实例只注册一次，避免新版注册接口下第二次运行崩溃；示例使用
带字段类型的 Struct、MapEntryDecision 和列表方法。站点配置改为固定字段 Struct，
原 storage key 不变，旧 defatom 改为 defref。应用类型迁移及浏览器验收仍未完成，
不能把 evaluator 执行结果当作页面交互或部署验收。

CI 只把前端 `dist/` 上传到 COS，使用 Action 1.2 自身的 verify，不增加上传校验脚本。
PR 的 CDN 路径按 PR number / run / attempt 隔离；各 PR 与生产分别排队、不取消在途上传。
生产发布前查询一次 main HEAD，过期运行跳过 COS 和服务器发布、查询失败则终止。
原生产 COS prefix 与 `dist/*` 服务器路径不变，Rust/WASM 源码不作为 COS 资源迁移。
严格入口、完整 public、原质量 baseline 和 Rust/WASM 构建保留；移除四份没有失败条件的
重复清单，不增加测试、compiler fix/proof 或 preset。

### License

MIT
