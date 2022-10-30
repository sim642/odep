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
  List.fold_left (fun g entry ->
      match entry with
      | Library {name; uid; local; requires; _} ->
        let lib: V.t = Library {name; digest = uid; local} in
        let g = G.add_vertex g lib in
        List.fold_left (fun g require ->
            G.add_edge g lib (Library (DH.find digest2library require))
          ) g requires
      | Executables {names; requires; _} ->
        List.fold_left (fun g name ->
            let exe: V.t = Executable name in
            let g = G.add_vertex g exe in
            List.fold_left (fun g require ->
                G.add_edge g exe (Library (DH.find digest2library require))
              ) g requires
          ) g names
      | _ ->
        g
    ) G.empty dune

module DG =
struct
  module VV = V
  include G

  let get_subgraph _ = None
  let graph_attributes _ = []
  let vertex_attributes = function
    | VV.Executable _ ->
      [`Shape `Diamond]
    | Library {local = true; _} ->
      []
    | Library {local = false; _} ->
      [`Style `Filled]
  let default_vertex_attributes _ = []
  let edge_attributes _ = []
  let default_edge_attributes _ = []
  let vertex_name = function
    | VV.Executable name -> name
    | Library {name; _} -> name
  let vertex_name v = Printf.sprintf "\"%s\"" (vertex_name v)
end

module D = Graph.Graphviz.Dot (DG)

let () =
  D.output_graph stdout g
