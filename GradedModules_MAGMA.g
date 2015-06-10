#!/bin/bash

. $(dirname $0)/init_homalg_project_test_suite

cd $PKG_PATH/homalg_project

## GradedModules
cd GradedModules/examples/

## MAGMA
cd MAGMA

for i in \
MainExample.g \
ReducedBasisOfModule.g \
; do
    cp -u ../$i .
    update_from_directory_one_level_up
done

for i in \
HilbertPolynomial.g \
Purity.g \
FilteredByPurity.g \
Triangle.g \
Complexes.g \
GlobalSections.g \
P1.g \
Schenck-3.2.g \
Schenck-8.3.g \
Schenck-8.3.3.g \
NonCohenMacaulayMonomialIdeal.g \
; do
    echo -e "\n"
    echo "========================="
    echo MAGMA/$i "(GradedModules)"
    echo "========================="
    update_from_directory_one_level_up
    gap $i < /dev/null
done

cd ../../..
