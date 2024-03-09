module Opkg = OpamPackage
module Ofml = OpamFormula

type package =
  | Opam of Opkg.t
  | Compiler
  | Local
[@@deriving eq, ord]

let show_package = function
  | Opam package -> Opkg.Name.to_string package.name ^ " " ^ Opkg.Version.to_string package.version
  | Compiler -> "(compiler)"
  | Local -> "(local)"

module V =
struct
  type executable_cluster = string list [@@deriving eq, ord]

  type executable = {
    package: package option;
    cluster: executable_cluster;
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
    | ExecutableCluster of executable_cluster (** Only for module parent, not used in dot output. *)
    | Executable of executable
    | Library of library
    | Module of {parent: t; name: string}
    | LocalPackageCluster
    | OpamPackage of Opkg.t
    | SysPackage of string
  [@@deriving eq, ord]

  let hash = Hashtbl.hash
end

module Version_formula =
struct
  type t = Ofml.version_formula

  (* Ofml.compare_version_formula is not exposed... *)
  let compare =
    Ofml.compare_formula [%ord: [`Eq|`Neq|`Geq|`Gt|`Leq|`Lt] * Opkg.Version.t]

  let show = function
    | Ofml.Empty -> ""
    | vf ->
      Ofml.string_of_formula (fun (relop, v) ->
          OpamPrinter.FullPos.relop_kind relop ^ " " ^ Opkg.Version.to_string v
        ) vf
end

module E =
struct
  type t =
    | None
    | OpamFormula of {optional: bool; version_formula: Version_formula.t}
  [@@deriving ord]

  let default = None
end

module G = Graph.Persistent.Digraph.ConcreteLabeled (V) (E)
