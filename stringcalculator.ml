let header_regex = Str.regexp "//\\(.*?\\)\n"

let rec sum list =
  match list with
    [] -> 0
  | head::list -> head + sum list

let sum_str_list str_list =
  match str_list with
    [] -> 0
  | head::[] -> int_of_string head
  | head::list -> sum (List.map (fun x -> int_of_string x) (head :: list))

let has_header str =
  Str.string_match header_regex str 0

let extract_delimeter str =
  if has_header str then Str.matched_group 1 str else "[,\n]"

let calc str =
  (* Produces a regex along the lines of /[,\n]/ *)
  let regex = Str.regexp (Printf.sprintf "%s" (extract_delimeter str)) in
  sum_str_list (Str.split regex (Str.global_replace header_regex "" str))
