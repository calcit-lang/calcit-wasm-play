## Calcit built into WASM

Demo http://repo.calcit-lang.org/calcit-wasm-play/

Notice: `log` function is injected for logging.

### Development

> Based on local copy of calcit_runner.rs with `libloading` and injections disabled.

Build wasm code:

```bash
wasm-pack build -t web
```

Serve page:

```bash
yarn
yarn vite
```

### License

MIT
