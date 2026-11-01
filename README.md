## Calcit WASM playground

Demo http://repo.calcit-lang.org/calcit-wasm-play/

This project embeds the Calcit runtime in WebAssembly and provides an in-browser
playground for evaluating small Calcit programs. The application UI is built
with Respo, while the evaluator itself runs locally in the browser without a
server round trip.

使用者影响：前端 CLI / `@calcit/procs` 与浏览器内嵌 Rust 解释器一起升级到正式
**0.32.1**，需要重新安装完整依赖图、重建 WASM 和前端后刷新；不能只更新 UI。
用户输入的程序按 0.32.1 检查，旧类型标注语法需要迁移，不承诺旧程序语法继续兼容。
模块候选图改用正式 Reel **0.7.1**、UI **0.10.0**、Respo **0.18.0**、JS-FFI **0.2.9**
（传递 Router **0.9.0**）。这些真实 tag 已通过 Caps 严格安装；候选仍需通过原 Linux CI 和评审。

Snapshot 由官方 edit format 迁移到 0.32 类型写法，保留原 typed Store/Op/SnippetState
和实际受检 Dynamic dispatcher 入口。业务代码不额外改写，不增加 cast 或业务默认值。
解释器继续只嵌入原 interpreter，不启用无关 WASM 代码生成后端；Cargo lock 只更新 calcit。
存档形状/key、恢复顺序、60 秒保存、真实 hud!、日志与 innerText 结果显示保持。
原 strict、全定义和质量基线保留，并只用官方 lower-only 操作收紧既有预算：
unsafe/schemaDynamic/typeNone/deprecated/codeDynamic 为 0，typeNotFull 16→1、unresolved 18→3、codeNil 4→3。
剩余 partial 是入口先检查/解码的真实 Dynamic dispatch 合同，不冒充封闭 Op；三个 nil 是原 spacer 参数。

npm 新候选采用一小时包龄，无单包豁免，不重新等待已有锁版本。Actions 改用正式 tag；
Rust action v1 含已审阅的上游输入处理/安装更新，其余 tag 核对到原实现。
仍用原 nightly 与 CI wasm-pack 0.15.0；本地可用的 wasm-pack 0.13.1 已构建成功，不能替代 Linux 原 CI。
原 COS 内置 verify、隔离 PR 前缀及 dist-only 生产路径保持，不新增校验脚本。

### 前端产物体积与上传

`dist` 仅包含 HTML、JavaScript 和解释器 WASM 三个运行文件，不上传 `target`、`pkg`、源码或调试目录。日志中超过 100% 的 COSCLI 累计计数不能当成目录里有几十 MiB 的文件；它不等于需要上传的文件总量。

release 构建使用 Cargo 的体积优化 `opt-level = "s"` 与 LTO，并关闭 Rust debuginfo；不删减解释器功能或改变编译器/依赖。此次本地原产物对照：WASM 从 4,053,257 降至 3,155,329 字节（-22.2%），三文件总量从 4,625,551 降至 3,727,623 字节（-19.4%）。这是本地实际构建值，Linux CI 以自己的构建产物为准；原两个真实 WASM 测试、五个页面样例及语法出错后恢复均通过。

COS 继续使用 action 自身的 verify，分块阈值设为 1 MiB，让该 WASM 使用并行分块而非单个大请求，减小失败请求需要重传的数据量。原上传/校验单步上限 10 分钟、独立 PR 前缀、生产 guard 与路径保持；成功构建的原 dist artifact 在后续上传失败时仍保留。上述调整仍须通过实际上传/校验，不将限时失败当作上传成功，也不增加项目侧校验脚本。

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
RUSTUP_TOOLCHAIN=nightly wasm-pack build -t web -- --locked
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

当前迁移说明和风险见文首。原两个 Node 回归使用真实构建的 WASM，验证日志 Unit 合同、
连续执行和语法错误后恢复；它们不代替实际浏览器的编辑器、标签或存档验收。

### 历史：0.31.0 配对

前端与内嵌解释器配对正式0.31.0，模块使用当时已发布 alpha图。
List Ops 示例 `.slice` 的终点已改为 `Option :some 6`，仍取索引4、5的值；
Dynamic dispatcher 保留原 Enum/Op解码。该历史结果不计为本轮0.32.1验收。

### 历史：0.30.1 迁移说明

使用者升级后请重新安装模块、构建并刷新，避免混用旧生成代码。前端和内嵌解释器
继续配对正式 0.30.1，npm / Cargo 依赖与 lock 不变；不是升级嵌入语言版本。
五处旧 Option 调用改为 `.unwrap-or`，各 fallback 与取值行为保持；渲染改用
Respo `render-with!` 的受管理 memo 帧，不改组件树、dispatch 协议或控件布局。
Tabs 按 UI 0.8.1 的公开 `TabsOptions` 构造器设置原选中项与垂直布局，其余可选
字段保留默认 none，不再依赖已移除的 `make-tabs-options` 包装函数。
编辑器首次挂载也按恢复的选中标签装入示例，不再出现 Threads 已选中但编辑框显示
Range 的不一致。这只恢复所选内置示例，不承诺保存用户尚未提交到状态的任意编辑文本。
启动先恢复存档，再首次渲染、注册 watch、离页/隐藏保存和定时器：坏存档不再在
解析失败前就安装保存副作用，不吞错、不自动清空或覆盖。解析失败仍停止启动，
可见恢复/导出界面不在本次实现范围；实际坏存档浏览器验收单独受授权范围约束。
原存档键与形状、60 秒间隔、实际 `hud!`、日志和 WASM 错误文本保持。
CI 仍保留原质量基线与真实 WASM 测试，不新增预算、重复校验脚本或测试框架。

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
