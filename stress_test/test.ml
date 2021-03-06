open GT
open OCanren
open OCanren.Std
type type_constant0 =
  | A_0_0 
let a_0_0 () = !! A_0_0
type type_constant1 =
  | A_1_0 
  | A_1_1 
let a_1_0 () = !! A_1_0
let a_1_1 () = !! A_1_1
type type_constant2 =
  | A_2_0 
  | A_2_1 
  | A_2_2 
let a_2_0 () = !! A_2_0
let a_2_1 () = !! A_2_1
let a_2_2 () = !! A_2_2
type type_constant3 =
  | A_3_0 
  | A_3_1 
  | A_3_2 
  | A_3_3 
let a_3_0 () = !! A_3_0
let a_3_1 () = !! A_3_1
let a_3_2 () = !! A_3_2
let a_3_3 () = !! A_3_3
type type_constant4 =
  | A_4_0 
  | A_4_1 
  | A_4_2 
  | A_4_3 
  | A_4_4 
let a_4_0 () = !! A_4_0
let a_4_1 () = !! A_4_1
let a_4_2 () = !! A_4_2
let a_4_3 () = !! A_4_3
let a_4_4 () = !! A_4_4
type type_constant5 =
  | A_5_0 
  | A_5_1 
  | A_5_2 
  | A_5_3 
  | A_5_4 
  | A_5_5 
let a_5_0 () = !! A_5_0
let a_5_1 () = !! A_5_1
let a_5_2 () = !! A_5_2
let a_5_3 () = !! A_5_3
let a_5_4 () = !! A_5_4
let a_5_5 () = !! A_5_5
type ('a5, 'a4, 'a3, 'a2, 'a1, 'a0) gtype_with_constant =
  | B_0 of 'a5 
  | B_1 of 'a4 
  | B_2 of 'a3 
  | B_3 of 'a2 
  | B_4 of 'a1 
  | B_5 of 'a0 
module For_gtype_with_constant =
  (Fmap6)(struct
            let rec fmap fa5 fa4 fa3 fa2 fa1 fa0 =
              function | B_0 a5 -> B_0 (fa5 a5) | B_1 a4 -> B_1 (fa4 a4) | B_2 a3 -> B_2 (fa3 a3) | B_3 a2 -> B_3 (fa2 a2) | B_4 a1 -> B_4 (fa1 a1) | B_5 a0 -> B_5 (fa0 a0)
            type ('a5, 'a4, 'a3, 'a2, 'a1, 'a0) t = ('a5, 'a4, 'a3, 'a2, 'a1, 'a0) gtype_with_constant
          end)
let rec b_0 x__0 = inj (For_gtype_with_constant.distrib (B_0 x__0))
and b_1 x__0 = inj (For_gtype_with_constant.distrib (B_1 x__0))
and b_2 x__0 = inj (For_gtype_with_constant.distrib (B_2 x__0))
and b_3 x__0 = inj (For_gtype_with_constant.distrib (B_3 x__0))
and b_4 x__0 = inj (For_gtype_with_constant.distrib (B_4 x__0))
and b_5 x__0 = inj (For_gtype_with_constant.distrib (B_5 x__0))
type ('a5, 'a4, 'a3, 'a2, 'a1, 'a0) gtype_complex =
  | C_1 of 'a0 * 'a5 
  | C_2 of 'a4 * 'a3 
  | C_3 of 'a1 * 'a2 
  | C_4 of 'a1 * 'a1 
  | C_5 of 'a1 * 'a1 * 'a1 * 'a1 * 'a1 * 'a1 
  | C_6 of 'a0 
  | C_7 of 'a0 * 'a0 
module For_gtype_complex =
  (Fmap6)(struct
            let rec fmap fa5 fa4 fa3 fa2 fa1 fa0 =
              function
              | C_1 (a0_0, a5_1) -> C_1 ((fa0 a0_0), (fa5 a5_1))
              | C_2 (a4_0, a3_1) -> C_2 ((fa4 a4_0), (fa3 a3_1))
              | C_3 (a1_0, a2_1) -> C_3 ((fa1 a1_0), (fa2 a2_1))
              | C_4 (a1_0, a1_1) -> C_4 ((fa1 a1_0), (fa1 a1_1))
              | C_5 (a1_0, a1_1, a1_2, a1_3, a1_4, a1_5) -> C_5 ((fa1 a1_0), (fa1 a1_1), (fa1 a1_2), (fa1 a1_3), (fa1 a1_4), (fa1 a1_5))
              | C_6 a0 -> C_6 (fa0 a0)
              | C_7 (a0_0, a0_1) -> C_7 ((fa0 a0_0), (fa0 a0_1))
            type ('a5, 'a4, 'a3, 'a2, 'a1, 'a0) t = ('a5, 'a4, 'a3, 'a2, 'a1, 'a0) gtype_complex
          end)
let rec c_1 x__0 x__1 = inj (For_gtype_complex.distrib (C_1 (x__0, x__1)))
and c_2 x__0 x__1 = inj (For_gtype_complex.distrib (C_2 (x__0, x__1)))
and c_3 x__0 x__1 = inj (For_gtype_complex.distrib (C_3 (x__0, x__1)))
and c_4 x__0 x__1 = inj (For_gtype_complex.distrib (C_4 (x__0, x__1)))
and c_5 x__0 x__1 x__2 x__3 x__4 x__5 = inj (For_gtype_complex.distrib (C_5 (x__0, x__1, x__2, x__3, x__4, x__5)))
and c_6 x__0 = inj (For_gtype_complex.distrib (C_6 x__0))
and c_7 x__0 x__1 = inj (For_gtype_complex.distrib (C_7 (x__0, x__1)))
let get_it x q39 =
  fresh (q1) (x q1)
    (conde
       [fresh (q6 q7) (q1 === (c_1 q6 q7)) (q39 === (a_5_1 ()));
       fresh (q8 q9) (q1 === (c_2 q8 q9)) (q39 === (a_5_1 ()));
       fresh (q10 q11) (q1 === (c_3 q10 q11)) (q39 === (a_5_1 ()));
       fresh (q12 q13) (q1 === (c_4 q12 q13)) (q39 === (a_5_1 ()));
       fresh (q14 q15 q16 q17 q18 q19) (q1 === (c_5 q14 q15 q16 q17 q18 q19)) (q39 === (a_5_1 ()));
       fresh (q20 q21) (q1 === (c_6 (c_1 q20 q21))) (q39 === (a_5_1 ()));
       (q1 === (c_6 (c_2 (a_2_0 ()) (a_3_0 ())))) &&& (q39 === (a_5_1 ()));
       (q1 === (c_6 (c_2 (a_2_0 ()) (a_3_1 ())))) &&& (q39 === (a_5_0 ()));
       (q1 === (c_6 (c_2 (a_2_0 ()) (a_3_2 ())))) &&& (q39 === (a_5_1 ()));
       (q1 === (c_6 (c_2 (a_2_0 ()) (a_3_3 ())))) &&& (q39 === (a_5_1 ()));
       fresh (q22) (q1 === (c_6 (c_2 (a_2_1 ()) q22))) (q39 === (a_5_1 ()));
       fresh (q23) (q1 === (c_6 (c_2 (a_2_2 ()) q23))) (q39 === (a_5_1 ()));
       fresh (q24 q25) (q1 === (c_6 (c_3 q24 q25))) (q39 === (a_5_1 ()));
       fresh (q26 q27) (q1 === (c_6 (c_4 q26 q27))) (q39 === (a_5_1 ()));
       fresh (q28 q29 q30 q31 q32 q33) (q1 === (c_6 (c_5 q28 q29 q30 q31 q32 q33))) (q39 === (a_5_1 ()));
       fresh (q34) (q1 === (c_6 (c_6 q34))) (q39 === (a_5_1 ()));
       fresh (q35 q36) (q1 === (c_6 (c_7 q35 q36))) (q39 === (a_5_1 ()));
       fresh (q37 q38) (q1 === (c_7 q37 q38)) (q39 === (a_5_1 ()))])
let heho a q60 =
  fresh (q41) (a q41)
    (conde
       [fresh (k) (q41 === (c_1 k (a_5_0 ()))) (get_it (fun q45 -> k === q45) q60);
       fresh (k) (q41 === (c_6 (c_1 k (a_5_0 ())))) (get_it (fun q49 -> k === q49) q60);
       (q41 === (c_6 (c_6 (c_6 (c_6 (c_6 (c_2 (a_2_0 ()) (a_3_1 ())))))))) &&& (q60 === (a_5_0 ()));
       (q41 === (c_6 (c_6 (c_6 (c_6 (c_6 (c_6 (c_6 (c_6 (c_6 (c_6 (c_2 (a_2_0 ()) (a_3_1 ()))))))))))))) &&& (q60 === (a_5_0 ()));
       (q41 ===
          (c_6
             (c_6
                (c_6
                   (c_6 (c_6 (c_6 (c_6 (c_6 (c_6 (c_6 (c_6 (c_6 (c_6 (c_6 (c_6 (c_6 (c_6 (c_6 (c_6 (c_6 (c_6 (c_6 (c_6 (c_6 (c_6 (c_2 (a_2_0 ()) (a_3_1 ()))))))))))))))))))))))))))))
         &&& (q60 === (a_5_0 ()));
       fresh (k)
         (q41 ===
            (c_6
               (c_7 (c_1 k (a_5_1 ()))
                  (c_7
                     (c_7
                        (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))
                           (c_7
                              (c_7 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())))
                                 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))))
                              (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())))))
                        (c_6 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())) (c_6 (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))))))
                     (c_6
                        (c_6
                           (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())) (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))))))))))
         (get_it (fun q57 -> k === q57) q60);
       fresh (k)
         (q41 ===
            (c_6
               (c_7
                  (c_7
                     (c_7 (c_7 (c_1 k (a_5_2 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))
                        (c_7 (c_7 (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())))
                           (c_7
                              (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))
                                 (c_7 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())))
                                    (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))))
                              (c_7
                                 (c_7 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())))
                                    (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ()))))
                                 (c_6 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))))))))
                     (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ()))
                        (c_7
                           (c_6
                              (c_7 (c_7 (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))) (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))))
                                 (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ()))))) (
                           c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))))
                  (c_7
                     (c_7 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))))
                        (c_6 (c_6 (c_6 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))))))))
                     (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())))))))) (
         get_it (fun q51 -> k === q51) q60);
       fresh (k) (q41 === (c_7 (c_1 k (a_5_1 ())) (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ()))))))
         (get_it (fun q46 -> k === q46) q60);
       fresh (k) (q41 === (c_7 (c_6 (c_1 k (a_5_1 ()))) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))) (get_it (fun q56 -> k === q56) q60);
       fresh (k)
         (q41 ===
            (c_7
               (c_6
                  (c_7
                     (c_7
                        (c_7
                           (c_7
                              (c_7
                                 (c_7 (c_7 (c_7 (c_1 k (a_5_1 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))) (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))))
                                    (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))) (
                                 c_6 (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))))) (
                              c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))) (
                           c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))) (
                        c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))
                     (c_7
                        (c_7
                           (c_6
                              (c_7 (c_7 (c_6 (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())))) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))
                                 (c_6
                                    (c_7 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())))
                                       (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())))))))
                           (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))) (
                        c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))))) (
               c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())))) (get_it (fun q47 -> k === q47) q60);
       fresh (k)
         (q41 ===
            (c_7 (c_7 (c_1 k (a_5_2 ())) (c_6 (c_6 (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ()))))))
               (c_7
                  (c_7
                     (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))
                        (c_7
                           (c_7 (c_6 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())))) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())))
                           (c_6
                              (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))
                                 (c_7 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))
                                    (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))))))))
                     (c_7
                        (c_6
                           (c_7
                              (c_7
                                 (c_7 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))
                                    (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))))
                                 (c_7 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ()))) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))))
                              (c_6 (c_6 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))))))
                        (c_7
                           (c_7
                              (c_7
                                 (c_7 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())))
                                 (c_7 (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))) (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())))))
                              (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ()))) (
                           c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())))))
                  (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ()))
                     (c_7
                        (c_6
                           (c_6
                              (c_7 (c_6 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ()))))
                                 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())))))
                        (c_7
                           (c_7
                              (c_7
                                 (c_7 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ()))) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))
                                 (c_7 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))
                                    (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())))))
                              (c_6 (c_6 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))))))
                           (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))))))))) (
         get_it (fun q54 -> k === q54) q60);
       fresh (k)
         (q41 ===
            (c_7
               (c_7
                  (c_7 (c_1 k (a_5_2 ()))
                     (c_7
                        (c_7
                           (c_7 (c_6 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))))
                              (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))))
                           (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))))
                        (c_7
                           (c_6 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())))))
                           (c_7
                              (c_7 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))
                                 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ()))))
                              (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))))))))
                  (c_6
                     (c_6
                        (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))
                           (c_6 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())) (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())))))))))
               (c_7
                  (c_7
                     (c_6
                        (c_7
                           (c_7 (c_6 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))))
                              (c_7 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))))
                           (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))))
                     (c_6
                        (c_6
                           (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_6 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))))))))
                  (c_7
                     (c_6
                        (c_6
                           (c_7 (c_6 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))))
                              (c_7 (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())))
                                 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))))))
                     (c_7
                        (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))
                           (c_7
                              (c_7 (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())))
                                 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))))
                              (c_7 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())))
                                 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))))))
                        (c_7
                           (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ()))
                              (c_7 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))
                                 (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))))) (
                           c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))))))) (
         get_it (fun q58 -> k === q58) q60);
       fresh (k)
         (q41 ===
            (c_7
               (c_7
                  (c_7 (c_6 (c_1 k (a_5_2 ())))
                     (c_6
                        (c_7
                           (c_7
                              (c_6
                                 (c_7 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))
                                    (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())))))
                              (c_6 (c_6 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))))))
                           (c_7
                              (c_7
                                 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))))
                                 (c_7 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())))
                                    (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ()))))) (
                              c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))))))
                  (c_7
                     (c_7 (c_6 (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))))
                        (c_7
                           (c_6
                              (c_7
                                 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))))
                                 (c_7 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))
                                    (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))))) (
                           c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ()))))
                     (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))
                        (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))
                           (c_7 (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))
                              (c_7 (c_6 (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))))
                                 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))))))))))
               (c_7 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())))
                  (c_7
                     (c_6
                        (c_7
                           (c_6
                              (c_7 (c_6 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ()))))
                                 (c_7 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())))
                                    (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))))))
                           (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())))))
                     (c_7
                        (c_6
                           (c_7
                              (c_7
                                 (c_7 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())))
                                    (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))) (
                                 c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ()))) (
                              c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())))) (
                        c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ()))))))) (
         get_it (fun q50 -> k === q50) q60);
       fresh (k)
         (q41 ===
            (c_7
               (c_7
                  (c_7
                     (c_7
                        (c_7 (c_6 (c_6 (c_7 (c_1 k (a_5_1 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))))
                           (c_7 (c_7 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ()))) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())))
                              (c_7 (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())))))
                        (c_6 (c_6 (c_6 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())))))))
                     (c_6
                        (c_6
                           (c_6 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ()))))))))
                  (c_6
                     (c_7
                        (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))
                           (c_6 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))))))
                        (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))))
               (c_7
                  (c_7 (c_6 (c_6 (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())))))
                     (c_7
                        (c_6
                           (c_6 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())) (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ()))))))
                        (c_7 (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())))
                           (c_6 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())) (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ()))))))))
                  (c_7
                     (c_7
                        (c_7
                           (c_7
                              (c_7 (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))
                                 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())) (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ())))) (
                              c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))
                           (c_6 (c_7 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ())) (c_6 (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_1 ()))))))
                        (c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_0 ()))) (
                     c_1 (c_2 (a_2_0 ()) (a_3_1 ())) (a_5_2 ())))))) (
         get_it (fun q55 -> k === q55) q60)])