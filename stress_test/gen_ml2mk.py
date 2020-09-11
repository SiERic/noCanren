import itertools
import random
random.seed(23)
def r(n):
    return random.randint(0, n - 1)

TYPES = ""

TYPE_CONSTANTS = ""
for i in range(6):
    TYPE_CONSTANTS += "type type_constant{} = ".format(i)
    TYPE_CONSTANTS += " | ".join(["A_{}_{}".format(i, j) for j in range(i + 1)])
    TYPE_CONSTANTS += "\n"

TYPE_WITH_CONSTANT = "type type_with_constant = "
TYPE_WITH_CONSTANT += " | \n    ".join(["B_{} of type_constant{}".format(i, i) for i in range(6)])


COMPLEX_TYPE = """type type_complex = C_1 of type_complex * type_constant5 |
    C_2 of type_constant2 * type_constant3 |
    C_3 of type_with_constant * type_constant4 |
    C_4 of type_with_constant * type_with_constant |
    C_5 of {} |
    C_6 of type_complex |
    C_7 of type_complex * type_complex
""".format(" * ".join(["type_with_constant"] * 6))



def gen_random(depth, ll=True):
    if depth == 0:
        if ll:
            return "C_1 (k, A_5_{})".format(r(3))
        return "C_1 (C_2 (A_2_0, A_3_1), A_5_{})".format(r(3))

    fl = r(4)
    if fl == 0 or fl == 3:
        return "C_7 ({},{})".format(gen_random(depth - 1, ll), gen_random(depth - 1, False))
    if fl == 1:
        return "C_6 ({})".format(gen_random(depth - 1, ll))
    if fl == 2:
        if ll:
            return "C_1 (k, A_5_{})".format(r(3))
        return "C_1 (C_2 (A_2_0, A_3_1), A_5_{})".format(r(3))

GET_IT = """let get_it x =
    (match x with
        | C_6 (C_2 (A_2_0, A_3_1)) -> A_5_0
        | _ -> A_5_1)
"""
    


SIMPLE_PATTERNS = ["C_1 (C_2 (A_2_0, A_3_1), A_5_{}) -> A_5_0".format(i) for i in range(6)]
RECURSIVE_PATTERNS = ["C_6 (" * i + "C_2 (A_2_0, A_3_1)" + ")" * i + "-> A_5_0" for i in [5, 10, 25]]
RANDOM_PATTERNS = ["{} -> get_it k".format(gen_random(d)) for d in range(10, 7, -1) for i in range(5)]

PATTERN = "let heho a =\n    match a with{}".format( "\n        | ".join(["",
    #  *SIMPLE_PATTERNS,
    *RECURSIVE_PATTERNS,
    *RANDOM_PATTERNS,
    #  "_ -> A_5_0",
]))



ALL = "\n\n".join([TYPE_CONSTANTS, TYPE_WITH_CONSTANT, COMPLEX_TYPE, GET_IT, PATTERN])
print(ALL)
