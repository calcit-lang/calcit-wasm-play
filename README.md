## Calcit WASM playground

Demo http://repo.calcit-lang.org/calcit-wasm-play/

This project embeds the Calcit runtime in WebAssembly and provides an in-browser
playground for evaluating small Calcit programs. The application UI is built
with Respo, while the evaluator itself runs locally in the browser without a
server round trip.

The frontend CLI/procs and embedded Rust interpreter pin formal Calcit 0.30.1,
using formal Reel 0.6.39, UI 0.7.41, Respo 0.16.122 and js-ffi 0.2.3.
The browser embeds the interpreter without the unrelated WASM code-generation
backend. The UI keeps its typed Store/Op/SnippetState and legacy Map storage
format/key. DOM, timing and storage boundaries use checked host APIs instead
of unsafe coercions; result text retains its existing `innerText` behavior.

Log procs register once with a checked Unit implementation contract. A program
ending in println/echo/eprintln now returns `&unit`, matching the current CLI,
instead of the old `nil`. Invalid Cirru syntax returns an error message rather
than trapping the WASM instance, so the next valid program can still run.
The runtime tests exercise the actual built WASM with simulated logging callbacks;
they do not substitute for browser editor, DOM and persistence acceptance.

### Development

Install the Calcit modules and verify the lockstep toolchain:

```bash
caps --ci --strict
caps verify --toolchain
```

Build the embedded runtime:

```bash
wasm-pack build -t web -- --locked
yarn test
```

Serve page:

```bash
yarn
yarn vite
```

Validate the Calcit application before publishing:

```bash
calcit calcit.cirru --warn-dyn-method --check-only --all-defs
calcit fix --workflow strict --verify
calcit calcit.cirru js
yarn vite build --base=./
```

### 中文说明

本项目将 Calcit runtime 编译进 WebAssembly，在浏览器内直接执行小段
Calcit 程序；界面使用 Respo 构建。前端 `deps.cirru` 与 `@calcit/procs`
配对正式 0.30.1，内嵌 Rust evaluator 也固定正式 0.30.1。保留实际使用的四个模块，
使用一致的正式依赖图；解释器不启用本应用未使用的 WASM 代码生成后端，移除两个
源码未使用的直接 Rust 依赖。

DOM、计时、存档读取的 12 处 unsafe 强转清零，原质量基线的 unsafe 上限同步收紧到 0，
其他预算不放宽。结果区继续使用 `innerText`；缺失元素、非 String 值在实际宿主边界报错。
空 Reel 使用公开 State 构造器和具名类型的空记录列表，不再强断言一个未确定的泛型 Op。
visibilitychange 按浏览器合同监听 document；旧存档形状和 storage key 不变。

日志 proc 每个实例只注册一次，并按当前语言合同返回 Unit；因此以日志结尾的程序结果
会从旧 `nil` 改为 `&unit`。无效 Cirru 输入不再 panic，而是返回 `Error: Bad snapshot: ...`，
后续正常程序仍能运行。`yarn test` 用实际 WASM 覆盖日志合同、连续运行和语法错误恢复，
不新增验证脚本依赖或 compiler fix/proof。五个内置示例在模拟日志宿主中的执行仅证明 evaluator，
不代表浏览器编辑器、标签切换、刷新恢复或生产部署已经验收。

CI 只把前端 `dist/` 上传到 COS，使用 Action 1.2 自身的 verify，不增加上传校验脚本。
PR 的 CDN 路径按 PR number / run / attempt 隔离；各 PR 与生产分别排队、不取消在途上传。
生产发布前查询一次 main HEAD，过期运行跳过 COS 和服务器发布、查询失败则终止。
原生产 COS prefix 与 `dist/*` 服务器路径不变，Rust/WASM 源码不作为 COS 资源迁移。
全定义门禁、原质量 baseline 和 Rust/WASM 构建保留，增加完整 strict 与实际 runtime 回归。
三个 spacer 的 nil 是现有 Respo 可选高度合同；不以零 unsafe 冒充所有边界都已消除。

上游宿主 API 需求见 [js-ffi #184](https://github.com/calcit-lang/js-ffi/issues/184)：
为真实 `innerText` 语义提供集中类型边界，避免应用重复维护原始属性访问。

### License

MIT
