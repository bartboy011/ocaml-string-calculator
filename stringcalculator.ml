open Str;;

let rec sum list =
  match list with
    [] -> 0
  | head::list -> head + sum list

let sum_str_list str_list =
  match str_list with
    [] -> 0
  | head::[] -> int_of_string head
  | head::list -> sum (List.map (fun x -> int_of_string x) (head :: list))

let calc str =
  sum_str_list (Str.split (regexp ",") str)
