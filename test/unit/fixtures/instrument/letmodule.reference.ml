module Bisect_visit___letmodule___ml =
  struct
    let ___bisect_visit___ =
      let point_definitions =
        "\132\149\166\190\000\000\000\014\000\000\000\004\000\000\000\r\000\000\000\r\176\160\000U@\160\000zA\160\001\001\029B" in
      let `Staged cb =
        Bisect.Runtime.register_file "letmodule.ml" ~point_count:3
          ~point_definitions in
      cb
  end
open Bisect_visit___letmodule___ml
let () =
  let module M = struct  end in
    let ___bisect_result___ = print_endline "foo" in
    ___bisect_visit___ 0; ___bisect_result___
let f () =
  ___bisect_visit___ 1; (let module M = struct  end in print_endline "foo")
let () =
  let module M =
    struct
      let () =
        let ___bisect_result___ = print_endline "foo" in
        ___bisect_visit___ 2; ___bisect_result___
    end in ()
