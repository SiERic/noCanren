MODULES = """open OCanren
open OCanren.Std
open Tester
open Test"""

SHOW_FUNCTIONS = ""
for i in range(6):
    SHOW_FUNCTIONS += "let show_type_constant{} = function".format(i)
    SHOW_FUNCTIONS += "\n    |".join([""] + ["A_{}_{} -> \"A_{}_{}\"".format(i, j, i, j) for j in range(i + 1)])
    SHOW_FUNCTIONS += "\n"

SHOW_FUNCTIONS += "\n\n"
SHOW_FUNCTIONS += "let show_type_with_constant = function"
SHOW_FUNCTIONS += "\n    |".join([""] + ["B_{} a -> \"B_{} \" ^ (show_type_constant{} a) ".format(i, i, i) for i in range(6)])

SHOW_FUNCTIONS += "\n\n"
SHOW_FUNCTIONS += "let rec show_type_complex = function{}".format("\n    |".join(["",
    "C_1 (a, b) -> \"C_1 \" ^ (show_type_complex a) ^ \" \" ^ (show_type_constant5 b)",
    "C_2 (a, b) -> \"C_2 \" ^ (show_type_constant2 a) ^ \" \" ^ (show_type_constant3 b)",
    "C_3 (a, b) -> \"C_3 \" ^ (show_type_with_constant a) ^ \" \" ^ (show_type_constant4 b)",
    "C_4 (a, b) -> \"C_4 \" ^ (show_type_with_constant a) ^ \" \" ^ (show_type_with_constant b)",
    "C_5 (a1, a2, a3, a4, a5, a6) -> \"C_5 \" ^ {}".format(" ^ \" \" ^ ".join(["(show_type_with_constant a{})".format(i + 1) for i in range(6)])),
    "C_6 a -> \"C_6 \" ^ (show_type_complex a)",
    "C_7 (a, b) -> \"C_7 \" ^ (show_type_complex a) ^ \" \" ^ (show_type_complex b)"
]))

MAGIC = """
let heh q r = heho ((===) q) r

let _ =
  run_exn show_type_complex (-1) q qh ("keks: ", fun q ->
    heh q (!!A_5_0)
  )
"""
#  let lshow_type_complex = function
    #  | _ -> \" lol \"

#  let reifier = For_gtype_complex.reify ()

#  let _ =
  #  runR reifier show_type_complex lshow_type_complex (-1) q qh ("keks: ", fun q ->
    #  heh q (!!A_5_0)
  #  )


ALL = "\n\n".join([MODULES, SHOW_FUNCTIONS, MAGIC])
print(ALL)
