open MiniKanren
open MiniKanrenStd
open Game2_bridge
open Tester


let show_person = function
 | A -> "A"
 | B -> "B"
 | C -> "C"
 | D -> "D"

let show_step f = function
 | One x     -> f x
 | Two (x,y) -> Printf.sprintf "(%s, %s)" (f x) (f y)

let show_list f x =
 let rec show_l = function
 | Nil           -> ""
 | Cons (x, Nil) -> f x
 | Cons (x, xs)  -> Printf.sprintf "%s, %s" (f x) (show_l xs)
 in
 Printf.sprintf "[%s]" (show_l x)

let rec of_int i = if i = 0 then o () else s @@ of_int @@ i - 1

let myshow x = show_list (show_step show_person) x

let () =
 run_exn myshow (2) q qh ("answers", (fun q -> getAnswer ((===)q) standartTimes (of_int 5 |> just)));
 ()