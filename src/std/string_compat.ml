open String

let ends_with ~suffix s =
  let len_s = length s
  and len_suf = length suffix in
  let diff = len_s - len_suf in
  let rec aux i =
    if i = len_suf then true
    else if unsafe_get s (diff + i) <> unsafe_get suffix i then false
    else aux (i + 1)
  in diff >= 0 && aux 0
