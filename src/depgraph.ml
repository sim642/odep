open Bos

open Dune_describe

let dune =
  let s = OS.File.read (Fpath.v "deps3.txt") |> Result.get_ok in
  Parsexp.Conv_single.parse_string_exn s t_of_sexp

(* let dune_describe = Cmd.(v "dune" % "describe" % "workspace" % "--with-deps")
let dune =
  let s = Result.get_ok OS.Cmd.(run_out dune_describe |> out_string |> success) in
  Parsexp.Conv_single.parse_string_exn s t_of_sexp *)


module V =
struct
  type library = {
    name: string;
    digest: Dune_describe.digest;
    local: bool;
  }
  [@@deriving eq, ord]

  type t =
    | Executable of string
    | Library of library
    | Module of {parent: t; name: string}
    | LocalPackageCluster
  [@@deriving eq, ord]

  let hash = Hashtbl.hash
end
module G = Graph.Persistent.Digraph.Concrete (V)

module Digest =
struct
  include String
  let hash = Hashtbl.hash
end
module DH = Hashtbl.Make (Digest)
let digest2library: V.library DH.t = DH.create 100

let () =
  List.iter (fun entry ->
      match entry with
      | Library {name; uid; local; _} ->
        DH.replace digest2library uid {name; digest = uid; local}
      | _ ->
        ()
    ) dune

let g =
  let fold_module parent g {name; module_deps} =
    let mod_: V.t = Module {parent; name} in
    let g = G.add_vertex g mod_ in
    let g = List.fold_left (fun g dep ->
        G.add_edge g mod_ (Module {parent; name=dep})
      ) g module_deps.for_intf
    in
    List.fold_left (fun g dep ->
        G.add_edge g mod_ (Module {parent; name=dep})
      ) g module_deps.for_impl
  in
  let g = List.fold_left (fun g entry ->
      match entry with
      | Library {name; uid; local; requires; modules} ->
        let lib: V.t = Library {name; digest = uid; local} in
        let g = G.add_vertex g lib in
        let g = List.fold_left (fun g require ->
            G.add_edge g lib (Library (DH.find digest2library require))
          ) g requires
        in
        let g = List.fold_left (fold_module lib) g modules in
        if local then (
          let cap_name = String.capitalize_ascii name in
          let g = G.add_edge g lib (Module {parent = lib; name = cap_name}) in
          if List.exists (fun (m: module_) -> m.name = cap_name ^ "__") modules then
            G.remove_vertex g (Module {parent = lib; name = cap_name ^ "__"})
          else
            List.fold_left (fun g (m: module_) ->
                if m.name <> cap_name then
                  G.add_edge g (Module {parent = lib; name = cap_name}) (Module {parent = lib; name = m.name})
                else
                  g
              ) g modules
        )
        else
          g
      | Executables {names; requires; modules} ->
        let g = List.fold_left (fun g name ->
            let exe: V.t = Executable name in
            let g = G.add_vertex g exe in
            List.fold_left (fun g require ->
                G.add_edge g exe (Library (DH.find digest2library require))
              ) g requires
          ) g names
        in
        let name = String.concat ", " names in
        let g = List.fold_left (fold_module (Executable name)) g modules in
        let g = List.fold_left (fun g name ->
            let exe: V.t = Executable name in
            G.add_edge g exe (Module {parent = exe; name = String.capitalize_ascii name})
          ) g names
        in
        G.remove_vertex g (Module {parent = Executable name; name = "Dune__exe"})
      | _ ->
        g
    ) G.empty dune
  in
  G.add_vertex g LocalPackageCluster

let opam_index = Opam_index.create ()
let opam_find s = match String.split_on_char '.' s with
  | ("threads" | "unix" | "str" | "compiler-libs" | "bigarray" | "dynlink" | "ocamldoc" | "stdlib" | "bytes") :: _ -> Some "(compiler)"
  | s :: _ ->
    Opam_index.Owner.find_opt s opam_index
    |> Option.map (fun {OpamPackage.name; _} -> OpamPackage.Name.to_string name)
  | [] -> assert false

module DG =
struct
  module VV = V
  include G

  let graph_attributes _ = [`Compound true]
  let vertex_attributes = function
    | VV.Executable _ ->
      [`Shape `Diamond]
    | Library {local = true; _} ->
      []
    | Library {local = false; _} ->
      [`Style `Filled]
    | Module _ ->
      [`Shape `Box]
    | LocalPackageCluster ->
      [`Fixedsize true; `Width 0.; `Height 0.; `Style `Invis; `Label ""]
  let default_vertex_attributes _ = []
  let default_edge_attributes _ = []
  let vertex_name = function
    | VV.Executable name -> name
    | Library {name; _} -> name
    | Module {name; _} -> name
    | LocalPackageCluster -> "local_package__"
  let get_subgraph = function
    | VV.Module {parent; _} ->
      Some {Ocamlgraph_extra.Graphviz.DotAttributes.sg_name = string_of_int (V.hash parent); sg_attributes = [`Label (vertex_name parent)]; sg_parent = Some "local_package__"}
    | (Library {local = true; _} | Executable _) as v ->
      Some {Ocamlgraph_extra.Graphviz.DotAttributes.sg_name = string_of_int (V.hash v); sg_attributes = [`Label (vertex_name v)]; sg_parent = Some "local_package__"}
    | Library {name; local = false; _} ->
      begin match opam_find name with
        | Some package ->
          Some {Ocamlgraph_extra.Graphviz.DotAttributes.sg_name = string_of_int (Hashtbl.hash package); sg_attributes = [`Label package]; sg_parent = None}
        | None -> None
      end
    | LocalPackageCluster ->
      Some {Ocamlgraph_extra.Graphviz.DotAttributes.sg_name = "local_package__"; sg_attributes = [`Label "(local)"]; sg_parent = None}
  let vertex_name v = Printf.sprintf "\"%s\"" (vertex_name v)
  let edge_attributes (u, v) =
    let ltail =
      match u with
      | VV.Library {local = true; _} | Executable _ ->
        let su = Option.get (get_subgraph u) in
        [`Ltail su.sg_name]
      | _ -> []
    in
    let lhead =
      match v with
      | VV.Library {local = true; _} | Executable _ ->
        let sv = Option.get (get_subgraph v) in
        [`Lhead sv.sg_name]
      | _ -> []
    in
    let minlen =
      match u, v with
      | (VV.Library {local = true; _} | Executable _), (VV.Library {local = true; _} | Executable _) ->
        [`Minlen 2]
      | _ -> []
    in
    match get_subgraph u, get_subgraph v with
    | Some su, Some sv when su = sv -> minlen
    | _, _ -> ltail @ lhead @ minlen
end

module D = Ocamlgraph_extra.Graphviz.Dot (DG)
module M = Ocamlgraph_extra.Mermaid.Make (DG)

module GOper = Graph.Oper.P (G)

let () =
  let g = GOper.transitive_reduction g in (* TODO: only on modules, not libraries/packages *)
  D.output_graph stdout g
  (* M.fprint_graph Format.std_formatter g *)
