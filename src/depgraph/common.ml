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

module Condition =
struct
  type t = OpamTypes.filter OpamTypes.filter_or_constraint Ofml.formula

  let compare = Stdlib.compare
  open OpamTypes

  (* Copied from opam 2.2 to have custom argument. *)
  let show_filter ?custom t =
    let custom ~context ~paren t =
      match custom with
      | None -> None
      | Some f -> f ~context ~paren t
    in
    let rec aux ?(context=`Or) t =
      let paren ?(cond=false) f =
        if cond || OpamFormatConfig.(!r.all_parens)
        then Printf.sprintf "(%s)" f else f
      in
      match custom ~context ~paren t with
      | Some str -> str
      | None ->
        match t with
        | FBool b    -> string_of_bool b
        | FString s  -> Printf.sprintf "%S" s
        | FIdent (pkgs,var,converter) ->
          OpamStd.List.concat_map "+"
            (function None -> "_" | Some p -> OpamPackage.Name.to_string p) pkgs
          ^ (if pkgs <> [] then ":" else "")
          ^ OpamVariable.to_string var
          ^ (match converter with
              | Some (it,ifu) -> "?"^it^":"^ifu
              | None -> "")
        | FOp(e,s,f) ->
          paren ~cond:(context <> `Or && context <> `And)
            (Printf.sprintf "%s %s %s"
               (aux ~context:`Relop e)
               (OpamPrinter.FullPos.relop_kind s)
               (aux ~context:`Relop f))
        | FAnd (e,f) ->
          paren ~cond:(context <> `Or && context <> `And)
            (Printf.sprintf "%s & %s" (aux ~context:`And e) (aux ~context:`And f))
        | FOr (e,f)  ->
          paren ~cond:(context <> `Or)
            (Printf.sprintf "%s | %s" (aux e) (aux f))
        | FNot e     ->
          paren ~cond:(context = `Relop)
            (Printf.sprintf "!%s" (aux ~context:`Not e))
        | FDefined e ->
          paren ~cond:(context = `Relop)
            (Printf.sprintf "?%s" (aux ~context:`Defined e))
        | FUndef f -> Printf.sprintf "#undefined(%s)" (aux f)
    in
    aux t

  (* Copied from opam 2.2 tree command. *)
  let show cond =
    let custom ~context:_ ~paren:_ = function
      | FString s -> Some s
      | _ -> None
    in
    let string_of_atom fc =
      match fc with
      | Filter f -> show_filter ~custom f
      | Constraint (relop, f) ->
        Printf.sprintf "%s %s"
          (OpamPrinter.FullPos.relop_kind relop)
          (show_filter ~custom f)
    in
    OpamFormula.string_of_formula string_of_atom cond
end

module E =
struct
  type t =
    | None
    | OpamFormula of {optional: bool; version_formula: Version_formula.t}
    | OpamCondition of {optional: bool; condition: Condition.t}
  [@@deriving ord]

  let default = None
end

module G = Graph.Persistent.Digraph.ConcreteLabeled (V) (E)
