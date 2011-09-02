#!/bin/bash

. $(dirname $0)/init_homalg-project_test_suite

cd $PKG_PATH

## Sheaves
cd Sheaves/examples/

## Singular
for i in \
Curve\:g\=?_and* Curve\:g\=10_and_g\^2_6-Sextic.g \
TwistedCubic.g \
d-uple_Embedding_of_P1.g \
RationalQuartic.g \
Triangle.g \
; do
    echo -e "\n"
    echo "========================="
    echo $i "(Sheaves)"
    echo "========================="
    gapL $i < /dev/null
done

## MAGMA
cd MAGMA

for i in \
Curve\:g\=10_and_g\^2_6-Sextic.g \
TwistedCubic.g \
; do
    echo -e "\n"
    echo "========================="
    echo MAGMA/$i "(Sheaves)"
    echo "========================="
    update_from_directory_one_level_up
    gapL $i < /dev/null
done

cd ../

## Macaulay2
cd Macaulay2

for i in \
Curve\:g\=10_and_g\^2_6-Sextic.g \
Triangle.g \
; do
    echo -e "\n"
    echo "========================="
    echo Macaulay2/$i "(Sheaves)"
    echo "========================="
    update_from_directory_one_level_up
    gapL $i < /dev/null
done

cd ../

## Maple
cd maple

for i in \
Curve\:g\=5_and_g\^1_3-Quintic.g \
TwistedCubic.g \
d-uple_Embedding_of_P1.g \
RationalQuartic.g \
; do
    echo -e "\n"
    echo "========================="
    echo Maple/$i "(Sheaves)"
    echo "========================="
    update_from_directory_one_level_up
    gapL $i < /dev/null
done

cd ../

## END

cd ../..
