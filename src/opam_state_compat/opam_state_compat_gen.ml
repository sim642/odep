let () =
  if OpamVersion.compare OpamVersion.current (OpamVersion.of_string "2.2") >= 0 then
    print_endline {|
      let universe_query st = OpamSwitchState.universe st ~requested:OpamPackage.Set.empty Query
    |}
  else
    print_endline {|
      let universe_query st = OpamSwitchState.universe st ~requested:OpamPackage.Name.Set.empty Query
    |}
