#!/bin/bash

. $(dirname $0)/init_homalg_project_test_suite

cd $PKG_PATH/homalg_project

## ExamplesForHomalg
cd ExamplesForHomalg/examples/

## Maple
cd maple

# TorExt.g: 2572.239 sec.
# ExtExt.g: 

for i in \
ReducedBasisOfModule.g \
Coupling.g \
; do
    cp -u ../$i .
    update_from_directory_one_level_up
done

# Those were part of the list below, but do not appear in any rep.
# Purity_OreModules.g \
# A3_Purity_OreModules.g \

for i in \
Purity.g \
A3_Purity.g \
Eliminate.g \
Auslander-Buchsbaum.g \
HilbertPolynomial.g \
Gcd_UsingCayleyDeterminant.g \
SimplerEquivalentMatrix.g \
; do
    echo -e "\n"
    echo "========================="
    echo maple/$i "(ExamplesForHomalg)"
    echo "========================="
    update_from_directory_one_level_up
    gap $i < /dev/null
done

cd ../../..
