let empty_string_test () =
  Alcotest.(check int) "It returns 0 for an empty string" 0 (Stringcalculator.calc(""))

let one_value_test () =
  Alcotest.(check int) "It returns 1 when given the string '1'" 1 (Stringcalculator.calc("1"))

let two_value_test () =
  Alcotest.(check int) "It returns 5 when given the string '2,3'" 5 (Stringcalculator.calc("2,3"))

let main_set = [
  "Empty string test", `Quick, empty_string_test;
  "One value test", `Quick, one_value_test;
  "Two value test", `Quick, two_value_test;
]

let () =
  Alcotest.run "String Calculator"
    ["StringCalculator", main_set]
