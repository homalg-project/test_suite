#!/bin/bash

. $(dirname $0)/init_homalg_project_test_suite

cd $PKG_PATH

## Sheaves
cd Sheaves/examples/

## MAGMA
cd MAGMA

for i in \
MainExample.g \
Purity.g \
ReducedBasisOfModule.g \
; do
    cp -u ../$i .
    update_from_directory_one_level_up
done


for i in \
Curve\:g\=10_and_g\^2_6-Sextic.g \
TwistedCubic.g \
d-uple_Embedding_of_P1.g \
RationalQuartic.g \
FilteredByPurity.g \
; do
    echo -e "\n"
    echo "========================="
    echo MAGMA/$i "(Sheaves)"
    echo "========================="
    update_from_directory_one_level_up
    gap $i < /dev/null
done

cd ../../..