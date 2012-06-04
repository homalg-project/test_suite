#!/bin/bash

. $(dirname $0)/init_homalg_project_test_suite

cd $PKG_PATH

## Sheaves
cd Sheaves/examples/

## Singular
for i in \
Curve\:g\=?_and* Curve\:g\=10_and_g\^2_6-Sextic.g \
TwistedCubic.g \
d-uple_Embedding_of_P1.g \
Pullback_d-uple_Embedding_of_P1.g \
RationalQuartic.g \
Pullback_RationalQuartic.g \
Triangle.g \
FilteredByPurity.g \
; do
    echo -e "\n"
    echo "========================="
    echo $i "(Sheaves)"
    echo "========================="
    gap $i < /dev/null
done

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

cd ../..
