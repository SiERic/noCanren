open OCanren
open OCanren.Std
open Tester
open Pes

let show_kelo = function
    | Kek -> "1"
    | Lol -> "0"

(* let show_lkelo = show logic show_kelo *)

(** For high order conversion **)
let heh q r = heho ((===) q) r

let _ =
  run_exn show_kelo (1) q qh ("keks: ", fun q ->
    heh q !! Kek
  )
