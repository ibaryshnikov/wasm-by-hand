### It's possible to export JavaScript functions to WebAssembly
```javascript
const results = await WebAssembly.instantiate(bytes, { 'env': {
    print: (k) => console.log('k is ', k),
}});
results.instance.exports.check();
```
### And then use it
```wat
(module
    (func $print (import "env" "print") (param i32))

    (func $check
        i32.const 5
        call $print
        i32.const 12
        call $print
        i32.const 555
        i32.const 2
        i32.mul
        call $print
    )

    (export "check" (func $check))
)
```


[next](FARTHER.md)
