let empty_string_test () =
  Alcotest.(check int) "It returns 0 for an empty string" 0 (Stringcalculator.calc(""))

let one_value_test () =
  Alcotest.(check int) "It returns 1 when given the string '1'" 1 (Stringcalculator.calc("1"))

let two_value_test () =
  Alcotest.(check int) "It returns 5 when given the string '2,3'" 5 (Stringcalculator.calc("2,3"))

let three_value_test () =
  Alcotest.(check int) "It returns 15 when given the string '4,5,6'" 15 (Stringcalculator.calc("4,5,6"))

let newline_delimiter_test () =
  Alcotest.(check int) "It returns 10 when given the string '5\n5'" 10 (Stringcalculator.calc("5\n5"))

let header_delimiter_test () =
  Alcotest.(check int) "It returns the correct value when a new delimiter is defined in the header" 10 (Stringcalculator.calc("//;\n5;5"))

let main_set = [
  "Empty string test", `Quick, empty_string_test;
  "One value test", `Quick, one_value_test;
  "Two value test", `Quick, two_value_test;
  "Three value test", `Quick, three_value_test;
  "Newline delimeter test", `Quick, newline_delimiter_test;
  "Header delimeter test", `Quick, header_delimiter_test;
]

let () =
  Alcotest.run "String Calculator"
    ["StringCalculator", main_set]
