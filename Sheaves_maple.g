#!/bin/bash

. $(dirname $0)/init_homalg_project_test_suite

cd $PKG_PATH

## Sheaves
cd Sheaves/examples/

## Maple
cd maple

## don't work since Sheaves:5dc2f09c
# d-uple_Embedding_of_P1.g \
# RationalQuartic.g \

for i in \
Curve\:g\=5_and_g\^1_3-Quintic.g \
TwistedCubic.g \
FilteredByPurity.g \
; do
    echo -e "\n"
    echo "========================="
    echo Maple/$i "(Sheaves)"
    echo "========================="
    update_from_directory_one_level_up
    gap $i < /dev/null
done

cd ../../..
