cd ..
make
cd -

python gen_ml2mk.py > test_ml2mk.ml
python gen_run.py > test_run.ml
time (../noCanren.native test_ml2mk.ml -o test.ml)
rm -rf test_ml2mk.cmi
time (ocamlbuild -use-ocamlfind -classic-display -Is . test_run.native)
time (./test_run.native)

# time (ocamlbuild -use-ocamlfind -classic-display -Is . test.native)

