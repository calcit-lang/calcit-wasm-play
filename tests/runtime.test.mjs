import assert from 'node:assert/strict';
import {readFileSync} from 'node:fs';
import test from 'node:test';
import init, {run_code} from '../pkg/calcit_wasm_play.js';

// Simulate only the WASM logging host, not DOM or browser rendering semantics.
globalThis.Window = class { static [Symbol.hasInstance](value) { return value === globalThis; } };
globalThis.window = globalThis;
const stdout = [];
const stderr = [];
globalThis._calcit_log = value => stdout.push(value);
globalThis._calcit_error = value => stderr.push(value);
await init({module_or_path:readFileSync(new URL('../pkg/calcit_wasm_play_bg.wasm',import.meta.url))});

test('WASM log procs return Unit and allow repeated execution', () => {
  for (const name of ['println', 'echo', 'eprintln', 'println']) {
    assert.equal(run_code(`assert= &unit $ ${name} |${name}-contract`), '&unit');
  }
  assert.deepEqual(stdout, ['println-contract', 'echo-contract', 'println-contract']);
  assert.deepEqual(stderr, ['eprintln-contract']);
});

test('syntax errors return a message and the same WASM instance can recover', () => {
  assert.match(run_code(')'), /^Error: Bad snapshot:/);
  assert.equal(run_code('+ 2 3'), '5');
});
