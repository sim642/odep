open Common

(* From https://github.com/ocurrent/opam-dune-lint/blob/master/index.ml *)
module Owner = Map.Make(String)

type t = OpamPackage.t Owner.t

(* Update the index to record that [changes] came from [pkg]. *)
let update_index t changes ~pkg =
  OpamStd.String.Map.fold (fun file op acc ->
      match op with
      | OpamDirTrack.Added _ ->
        begin match String.split_on_char '/' file with
          | ["lib"; lib; "META"] -> Owner.add lib pkg acc
          | _ -> acc
        end
      | _ -> acc
    ) changes t

let create () =
  let root = OpamStateConfig.opamroot () in
  ignore (OpamStateConfig.load_defaults ~lock_kind:`Lock_read root);
  OpamGlobalState.with_ `Lock_none @@ fun gt ->
  let switch = OpamStateConfig.get_switch () in
  let installed = (OpamSwitchState.load_selections ~lock_kind:`Lock_read gt switch).sel_installed in
  OpamPackage.Set.fold (fun pkg acc ->
      let changes = OpamPath.Switch.changes gt.root switch (OpamPackage.name pkg) in
      match OpamFile.Changes.read_opt changes with
      | None -> acc
      | Some changes -> update_index acc changes ~pkg
    ) installed Owner.empty

let opam_index = create ()

let find_library_package name =
  let main_name = List.hd (String.split_on_char '.' name) in
  match main_name with
  | "threads"
  | "unix"
  | "str"
  | "compiler-libs"
  | "bigarray"
  | "dynlink"
  | "ocamldoc"
  | "stdlib"
  | "bytes" ->
    Some Compiler
  | s ->
    Owner.find_opt s opam_index
    |> Option.map (fun {OpamPackage.name; _} -> Opam (OpamPackage.Name.to_string name))
