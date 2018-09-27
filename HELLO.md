### Put value on stack
```wat
i32.const 5
```
### Execute instruction
```wat
i32.const 3
i32.const 4
i32.add
```
this will take two values from stack, sum them, and put the result back on stack

### Simple function
```wat
(func $answer (result i32)
    i32.const 42
)
```
### We can export functions to JavaScript
```wat
(module
    (func $answer (result i32)
        i32.const 42
    )
    (export "answer" (func $answer))
)
```
### And then we can import wasm function like this
```javascript
const response = await fetch('main.wasm');
const bytes = await response.arrayBuffer();
const results = await WebAssembly.instantiate(bytes);
const answer = results.instance.exports.answer();
console.log(answer);
```


[next](./CALCULATIONS.md)
