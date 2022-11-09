(* From https://github.com/ocurrent/opam-dune-lint/blob/master/index.ml *)
open Common

module String_map = Map.Make (String)

let extract_changes_libraries findlib_map changes ~pkg =
  OpamStd.String.Map.fold (fun file op findlib_map ->
      match op with
      | OpamDirTrack.Added _ ->
        begin match String.split_on_char '/' file with
          | ["lib"; lib; "META"] -> String_map.add lib pkg findlib_map
          | _ -> findlib_map
        end
      | _ -> findlib_map
    ) changes findlib_map

let create_findlib_map () =
  let root = OpamStateConfig.opamroot () in
  ignore (OpamStateConfig.load_defaults ~lock_kind:`Lock_read root);
  OpamGlobalState.with_ `Lock_none @@ fun gt ->
  let switch = OpamStateConfig.get_switch () in

  let installed = (OpamSwitchState.load_selections ~lock_kind:`Lock_read gt switch).sel_installed in
  OpamPackage.Set.fold (fun pkg findlib_map ->
      let changes = OpamPath.Switch.changes gt.root switch (OpamPackage.name pkg) in
      match OpamFile.Changes.read_opt changes with
      | None -> findlib_map
      | Some changes -> extract_changes_libraries findlib_map changes ~pkg
    ) installed String_map.empty

let findlib_map: OpamPackage.t String_map.t Lazy.t =
  lazy (create_findlib_map ())

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
    String_map.find_opt s (Lazy.force findlib_map)
    |> Option.map (fun {OpamPackage.name; _} -> Opam (OpamPackage.Name.to_string name))
