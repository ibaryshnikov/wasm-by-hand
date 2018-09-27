 (module
  (func $print (import "env" "print") (param i32))

  (func $add (param $a i32) (param $b i32) (result i32)
    get_local $a
    get_local $b
    i32.add
  )
  (export "add" (func $add))
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
