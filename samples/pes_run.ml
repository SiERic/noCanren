open OCanren
open OCanren.Std
open Tester
open Pes

let show_kelo = function
    | Kek Tru -> "Kek Tru"
    | Kek Fls -> "Kek Fls"
    | Lol -> "Lol"
    | Heh -> "Heh"

let show_keloboo = function
    | Fls -> "0"
    | Tru -> "1"

(** For high order conversion **)
let heh q r = heho ((===) q) r

let _ =
  run_exn show_kelo (2) q qh ("keks: ", fun q ->
    heh q !! Fls
  )

(* let _ =
  run_exn show_keloboo (1) q qh ("boos: ", fun q ->
    heh !! Heh q
  ) *)