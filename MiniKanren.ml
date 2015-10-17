let (!!) = Obj.magic
open Printf

type var = Var of int
type w   = Unboxed of Obj.t | Boxed of int * int * (int -> Obj.t) | Invalid of int

let do_log = false

let logn fmt =
  if do_log then kprintf (printf "%s\n%!") fmt
  else  kprintf (fun fmt -> ignore (sprintf "%s" fmt)) fmt

let logf fmt =
  if do_log then kprintf (printf "%s%!") fmt
  else  kprintf (fun fmt -> ignore (sprintf "%s" fmt)) fmt

let rec wrap (x : Obj.t) =
  Obj.(
    let is_valid_tag =
      List.fold_left
      (fun f t tag -> tag <> t && f tag)
      (fun _ -> true)
      [lazy_tag   ; closure_tag  ; object_tag  ; infix_tag ;
       forward_tag; no_scan_tag  ; abstract_tag; custom_tag;
       final_tag  ; unaligned_tag; out_of_heap_tag
      ]
    in
    let is_unboxed obj =
      is_int obj ||
      (fun t -> t = string_tag || t = double_tag) (tag obj)
    in
    if is_unboxed x
    then Unboxed x
    else
      let t = tag x in
      if is_valid_tag t
      then
	let f = if t = double_array_tag then !! double_field else field in
	Boxed (t, size x, f x)
      else Invalid t
    )

let generic_show (x : Obj.t) =
  let b = Buffer.create 1024 in
  let rec inner o =
    match wrap o with
    | Invalid n             -> Buffer.add_string b (Printf.sprintf "<invalid %d>" n)
    | Unboxed n when !!n=0  -> Buffer.add_string b "[]"
    | Unboxed n             -> Buffer.add_string b (Printf.sprintf "int<%d>" (!!n))
    | Boxed (t,l,f) when t=0 && l=1 && (match wrap (f 0) with Unboxed i when !!i >=10 -> true | _ -> false) ->
       bprintf b "var%d" (match wrap (f 0) with Unboxed i -> !!i | _ -> failwith "shit")

    | Boxed   (t, l, f) ->
        Buffer.add_string b (Printf.sprintf "boxed %d <" t);
        for i = 0 to l - 1 do (inner (f i); if i<l-1 then Buffer.add_string b " ") done;
        Buffer.add_string b ">"
  in
  inner x;
  Buffer.contents b

module Env :
  sig
    type t

    val empty  : unit -> t
    val fresh  : t -> 'a * t
    val var    : t -> 'a -> int option
    val vars   : t -> var list
    val show   : t -> string
  end =
  struct
    module H = Hashtbl.Make (
      struct
        type t = var
        let hash = Hashtbl.hash
        let equal = (==)
      end)

    type t = unit H.t * int

    let counter_start = 10 (* 1 to be able to detect empty list *)
    let empty () = (H.create 1024, counter_start)

    let fresh (h, current) =
      logn "fresh var %d" current;
      (* let _ : string = read_line () in *)
      let v = Var current in
      H.add h v ();
      (!!v, (h, current+1))

    let var (h, _) x =
      if H.mem h (!! x)
      then let Var i = !! x in Some i
      else None

    let vars (h, _) = H.fold (fun v _ acc -> v :: acc) h []

    let show env = (List.fold_left (fun acc (Var i) -> acc ^ (Printf.sprintf "$%d; " i)) "env {" (vars env)) ^ "}"

  end

module Subst :
  sig
    type t

    val empty : t
    val walk  : Env.t -> 'a -> t -> 'a
    val walk' : Env.t -> 'a -> t -> 'a
    val unify : Env.t -> 'a -> 'a -> t option -> t option
    val show  : t -> string
  end =
  struct
    module M = Map.Make (struct type t = int let compare = Pervasives.compare end)

    type t = Obj.t M.t

    let show m = (M.fold (fun i x s -> s ^ Printf.sprintf "%d -> %s; " i (generic_show x)) m "subst {") ^ "}"

    let empty = M.empty

    let rec walk env var subst =
      match Env.var env var with
      | None   -> var
      | Some i ->
          try walk env (M.find i (!! subst)) subst with Not_found -> var

    let rec walk' env var subst =
      match Env.var env var with
      | None ->
	  (match wrap (Obj.repr var) with
	   | Unboxed _ -> var
	   | Boxed (t, s, f) ->
               let sf =
		 if t = Obj.double_array_tag
		 then !! Obj.set_double_field
		 else Obj.set_field
	       in
	       for i = 0 to s - 1 do
                 sf (Obj.repr var) i (!!(walk' env (!!(f i)) subst))
               done;
	       var
	   | Invalid n -> invalid_arg (Printf.sprintf "Invalid value for reconstruction (%d)" n)
          )

      | Some i ->
	  (try walk' env (M.find i (!! subst)) subst
	   with Not_found -> var
	  )

    let rec unify env x y = function
    | None -> None
    | (Some subst) as s ->
        let x, y = walk env x subst, walk env y subst in
        match Env.var env x, Env.var env y with
	| Some xi, Some yi -> if xi = yi then s else Some (!! (M.add xi y (!! subst)))
	| Some xi, _       -> Some (!! (M.add xi y (!! subst)))
	| _      , Some yi -> Some (!! (M.add yi x (!! subst)))
	| _ ->
	    let wx, wy = wrap (Obj.repr x), wrap (Obj.repr y) in
            (match wx, wy with
             | Unboxed vx, Unboxed vy -> if vx = vy then s else None
             | Boxed (tx, sx, fx), Boxed (ty, sy, fy) ->
                if tx = ty && sx = sy
		then
		  let rec inner i = function
                  | None -> None
                  | (Some _) as s ->
	               if i < sx
		       then inner (i+1) (unify env (!!(fx i)) (!!(fy i)) s)
		       else s
                  in
		  inner 0 s
                else None
	     | Invalid n, _ | _, Invalid n -> invalid_arg (Printf.sprintf "Invalid values for unification (%d)" n)
	     | _ -> None
	    )
  end

type state = Env.t * Subst.t
type lunit = state -> state Stream.t

let show_st (env, subst) = sprintf "st {%s, %s}" (Env.show env) (Subst.show subst)

let print_if_var e x k =
  match Env.var e x with
  | Some i -> sprintf "_.%d" i
  | None   -> k ()

type    int    = GT.int
type    string = GT.string
type 'a list   = 'a GT.list

class minikanren_string_t =
  object
    method t_string env str = print_if_var env str (fun _ -> str)
  end

class minikanren_int_t =
  object
    method t_int env int = print_if_var env int (fun _ -> string_of_int int)
  end

class ['a] minikanren_list_t =
  object
    inherit ['a, Env.t, string, Env.t, string] @GT.list
    method c_Nil  e s      = print_if_var e s.GT.x (fun _ -> "[]")
    method c_Cons e s x xs =
      print_if_var e x.GT.x  (fun _ -> x.GT.fx e) ^ ", " ^
      print_if_var e xs.GT.x (fun _ -> xs.GT.fx e)
  end

let minikanren t = t.GT.plugins#minikanren

let show_list   e fa l = GT.transform(GT.list) fa (new minikanren_list_t  ) e l
let show_int    e i    = GT.transform(GT.int)     (new minikanren_int_t   ) e i
let show_string e s    = GT.transform(GT.string)  (new minikanren_string_t) e s

let fresh f (env, subst) =
  let x, env' = Env.fresh env in
  f x (env', subst)

let (===) x y (env, subst) =
  logf "unify '%s' and '%s' in '%s' = " (generic_show !!x) (generic_show !!y) (show_st (env, subst));
  match Subst.unify env x y (Some subst) with
  | None   -> logn "none"; Stream.nil
  | Some s -> logn "'%s'" (show_st (env, s)); Stream.cons (env, s) Stream.nil

let conj f g st =
  logn "conj %s" (show_st st);
  Stream.from_fun (fun () -> Stream.concat_map g (f st))


let disj f g st =
  logn "disj %s" (show_st st);
  let rec interleave fs gs =
    logn "interleave";
    Stream.from_fun (
      fun () ->
	match Stream.destruct fs with
	| `Nil -> logn "destruct says `Nil"; gs
	| `Cons (hd, tl) ->
           logn "descruct says Cons(_,_)";
           Stream.cons hd (interleave gs tl)
    )
  in
  interleave
    (let () = logn "calling f in disj" in f st)
    (Stream.from_fun (fun () -> let () = logn "calling g in disj" in g st) )
