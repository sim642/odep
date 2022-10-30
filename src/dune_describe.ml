open Sexplib.Std

type digest = string [@@deriving sexp]

type module_deps = {
  for_intf: string list;
  for_impl: string list;
}
[@@deriving sexp] [@@sexp.allow_extra_fields]

type module_ = {
  name: string;
  module_deps: module_deps;
}
[@@deriving sexp] [@@sexp.allow_extra_fields]

type executable = {
  names: string list;
  requires: digest list;
  modules: module_ list;
}
[@@deriving sexp] [@@sexp.allow_extra_fields]

type library = {
  name: string;
  uid: digest;
  requires: digest list;
  local: bool;
  modules: module_ list;
}
[@@deriving sexp] [@@sexp.allow_extra_fields]

type entry =
  | Library of library
  | Executables of executable
  | Root of string
  | Build_context of string
[@@deriving sexp]

type t = entry list [@@deriving sexp]
