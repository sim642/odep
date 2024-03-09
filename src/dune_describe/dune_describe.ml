open Sexplib.Std

module Digest =
struct
  include String
  let hash = Hashtbl.hash
  let t_of_sexp = string_of_sexp
end

type module_deps = {
  for_intf: string list;
  for_impl: string list;
}
[@@deriving of_sexp] [@@sexp.allow_extra_fields]

type module_ = {
  name: string;
  impl: string option;
  module_deps: module_deps option [@sexp.option];
}
[@@deriving of_sexp] [@@sexp.allow_extra_fields]

type executable = {
  names: string list;
  requires: Digest.t list;
  modules: module_ list;
}
[@@deriving of_sexp] [@@sexp.allow_extra_fields]

type library = {
  name: string;
  uid: Digest.t;
  requires: Digest.t list;
  local: bool;
  modules: module_ list;
}
[@@deriving of_sexp] [@@sexp.allow_extra_fields]

type entry =
  | Library of library
  | Executables of executable
  | Root of string
  | Build_context of string
[@@deriving of_sexp]

type t = entry list [@@deriving of_sexp]
