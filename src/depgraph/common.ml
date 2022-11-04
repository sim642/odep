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
