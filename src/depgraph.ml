open Dune_describe

let dune = Parsexp_io.load_conv_exn Single t_of_sexp ~filename:"deps2.txt"


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
  List.fold_left (fun g entry ->
      match entry with
      | Library {name; uid; local; requires; modules} ->
        let lib: V.t = Library {name; digest = uid; local} in
        let g = G.add_vertex g lib in
        let g = List.fold_left (fun g require ->
            G.add_edge g lib (Library (DH.find digest2library require))
          ) g requires
        in
        List.fold_left (fold_module lib) g modules
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
        List.fold_left (fold_module (Executable name)) g modules
      | _ ->
        g
    ) G.empty dune

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
  let default_vertex_attributes _ = []
  let default_edge_attributes _ = []
  let vertex_name = function
    | VV.Executable name -> name
    | Library {name; _} -> name
    | Module {name; _} -> name
  let get_subgraph = function
    | VV.Module {parent; _} ->
      Some {Ocamlgraph_extra.Graphviz.DotAttributes.sg_name = string_of_int (V.hash parent); sg_attributes = [`Label (vertex_name parent)]; sg_parent = None}
    | (Library {local = true; _} | Executable _) as v ->
      Some {Ocamlgraph_extra.Graphviz.DotAttributes.sg_name = string_of_int (V.hash v); sg_attributes = [`Label (vertex_name v)]; sg_parent = None}
    | Library {name; local = false; _} ->
      begin match opam_find name with
        | Some package ->
          Some {Ocamlgraph_extra.Graphviz.DotAttributes.sg_name = string_of_int (Hashtbl.hash package); sg_attributes = [`Label package]; sg_parent = None}
        | None -> None
      end
  let vertex_name v = Printf.sprintf "\"%s\"" (vertex_name v)
  let edge_attributes (u, v) =
    match get_subgraph u, get_subgraph v with
    | Some su, Some sv ->
      [`Ltail su.sg_name; `Lhead sv.sg_name]
    | _, _ -> []
end

module D = Ocamlgraph_extra.Graphviz.Dot (DG)

module GOper = Graph.Oper.P (G)

let () =
  let g = GOper.transitive_reduction g in (* TODO: only on modules, not libraries/packages *)
  D.output_graph stdout g
