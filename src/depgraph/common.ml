type package =
  | Opam of string
  | Compiler
  | Local
[@@deriving eq, ord]

let show_package = function
  | Opam package -> package
  | Compiler -> "(compiler)"
  | Local -> "(local)"

module V =
struct
  type executable = {
    package: package option;
    name: string;
  }
  [@@deriving eq, ord]

  type library = {
    package: package option;
    name: string;
    digest: Dune_describe.digest;
    local: bool;
  }
  [@@deriving eq, ord]

  type t =
    | Executable of executable
    | Library of library
    | Module of {parent: t; name: string}
    | LocalPackageCluster
  [@@deriving eq, ord]

  let hash = Hashtbl.hash
end

module G = Graph.Persistent.Digraph.Concrete (V)
