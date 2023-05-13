module Opkg = OpamPackage

type package =
  | Opam of Opkg.t
  | Compiler
  | Local
[@@deriving eq, ord]

let show_package = function
  | Opam package -> Opkg.to_string package
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
    digest: Dune_describe.Digest.t;
    local: bool;
  }
  [@@deriving eq, ord]

  type t =
    | Executable of executable
    | Library of library
    | Module of {parent: t; name: string}
    | LocalPackageCluster
    | OpamPackage of Opkg.t
  [@@deriving eq, ord]

  let hash = Hashtbl.hash
end

module G = Graph.Persistent.Digraph.Concrete (V)
