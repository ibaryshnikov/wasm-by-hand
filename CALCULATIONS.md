## Basic computations
### add
```wat
(func $add (param $a i32) (param $b i32) (result i32)
    get_local $a
    get_local $b
    i32.add
)
(export "add" (func $add))
```
### mul
```wat
(func $mul (param $a i32) (param $b i32) (result i32)
    get_local $a
    get_local $b
    i32.add
)
(export "mul" (func $mul))
```

[next](./IMPORTING_JS.md)
