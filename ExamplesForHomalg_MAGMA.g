#!/bin/bash

. $(dirname $0)/init_homalg_project_test_suite

cd $PKG_PATH

## ExamplesForHomalg
cd ExamplesForHomalg/examples/

## MAGMA
cd MAGMA

i=ReducedBasisOfModule.g
cp -u ../$i .
update_from_directory_one_level_up

for i in \
Purity.g \
TorExt.g \
ExtExt.g \
Triangle.g \
Complexes.g \
EdW.g \
Auslander-Buchsbaum.g \
Gcd_UsingCayleyDeterminant.g \
SimplerEquivalentMatrix.g \
; do
    echo -e "\n"
    echo "========================="
    echo MAGMA/$i "(ExamplesForHomalg)"
    echo "========================="
    update_from_directory_one_level_up
    gap $i < /dev/null
done

cd ../../..
