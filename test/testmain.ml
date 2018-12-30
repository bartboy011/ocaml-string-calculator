let hello_test () =
  Alcotest.(check bool) "Hello, world test" true (true)

let main_set = [
  "Hello Test", `Quick, hello_test;
]
