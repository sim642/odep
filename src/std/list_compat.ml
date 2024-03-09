let rec find_map f = function
  | [] -> None
  | x :: l -> (
    match f x with
    | Some _ as result -> result
    | None -> find_map f l
  )
