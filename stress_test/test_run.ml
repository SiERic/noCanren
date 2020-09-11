open OCanren
open OCanren.Std
open Tester
open Test

let show_type_constant0 = function
    |A_0_0 -> "A_0_0"
let show_type_constant1 = function
    |A_1_0 -> "A_1_0"
    |A_1_1 -> "A_1_1"
let show_type_constant2 = function
    |A_2_0 -> "A_2_0"
    |A_2_1 -> "A_2_1"
    |A_2_2 -> "A_2_2"
let show_type_constant3 = function
    |A_3_0 -> "A_3_0"
    |A_3_1 -> "A_3_1"
    |A_3_2 -> "A_3_2"
    |A_3_3 -> "A_3_3"
let show_type_constant4 = function
    |A_4_0 -> "A_4_0"
    |A_4_1 -> "A_4_1"
    |A_4_2 -> "A_4_2"
    |A_4_3 -> "A_4_3"
    |A_4_4 -> "A_4_4"
let show_type_constant5 = function
    |A_5_0 -> "A_5_0"
    |A_5_1 -> "A_5_1"
    |A_5_2 -> "A_5_2"
    |A_5_3 -> "A_5_3"
    |A_5_4 -> "A_5_4"
    |A_5_5 -> "A_5_5"


let show_type_with_constant = function
    |B_0 a -> "B_0 " ^ (show_type_constant0 a) 
    |B_1 a -> "B_1 " ^ (show_type_constant1 a) 
    |B_2 a -> "B_2 " ^ (show_type_constant2 a) 
    |B_3 a -> "B_3 " ^ (show_type_constant3 a) 
    |B_4 a -> "B_4 " ^ (show_type_constant4 a) 
    |B_5 a -> "B_5 " ^ (show_type_constant5 a) 

let rec show_type_complex = function
    |C_1 (a, b) -> "C_1 " ^ (show_type_complex a) ^ " " ^ (show_type_constant5 b)
    |C_2 (a, b) -> "C_2 " ^ (show_type_constant2 a) ^ " " ^ (show_type_constant3 b)
    |C_3 (a, b) -> "C_3 " ^ (show_type_with_constant a) ^ " " ^ (show_type_constant4 b)
    |C_4 (a, b) -> "C_4 " ^ (show_type_with_constant a) ^ " " ^ (show_type_with_constant b)
    |C_5 (a1, a2, a3, a4, a5, a6) -> "C_5 " ^ (show_type_with_constant a1) ^ " " ^ (show_type_with_constant a2) ^ " " ^ (show_type_with_constant a3) ^ " " ^ (show_type_with_constant a4) ^ " " ^ (show_type_with_constant a5) ^ " " ^ (show_type_with_constant a6)
    |C_6 a -> "C_6 " ^ (show_type_complex a)
    |C_7 (a, b) -> "C_7 " ^ (show_type_complex a) ^ " " ^ (show_type_complex b)


let heh q r = heho ((===) q) r

let _ =
  run_exn show_type_complex (-1) q qh ("keks: ", fun q ->
    heh q (!!A_5_0)
  )

