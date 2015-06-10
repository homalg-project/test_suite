#!/bin/bash

. $(dirname $0)/init_homalg_project_test_suite

cd $PKG_PATH/homalg_project

## ExamplesForHomalg
cd ExamplesForHomalg/examples/

## Macaulay2
cd Macaulay2

# EdW.g:    191.906 sec.

for i in \
ReducedBasisOfModule.g \
Coupling.g \
; do
    cp -u ../$i .
    update_from_directory_one_level_up
done

for i in \
Purity.g \
TorExt.g \
ExtExt.g \
A3_Purity.g \
Triangle.g \
Complexes.g \
Auslander-Buchsbaum.g \
Eliminate.g \
Gcd_UsingCayleyDeterminant.g \
SimplerEquivalentMatrix.g \
; do
    echo -e "\n"
    echo "========================="
    echo Macaulay2/$i "(ExamplesForHomalg)"
    echo "========================="
    update_from_directory_one_level_up
    gap $i < /dev/null
done

cd ../../..
