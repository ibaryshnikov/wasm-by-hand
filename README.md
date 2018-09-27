# wasm-by-hand
This is a repo to store presentation and examples about WebAssembly text format (.wat)

## Build
To run examples first install [wabt](https://github.com/WebAssembly/wabt),
then build .wat file
```bash
wat2wasm main.wat -o main.wasm
```

## Serve
Then use your favourite http static server, for example:
```bash
python -m SimpleHTTPServer 8055
```

## To presentation
[start slides](./START.md)
