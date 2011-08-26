#!/bin/bash

. $(dirname $0)/init_homalg-project_test_suite

cd $PKG_PATH

## GradedModules
cd GradedModules/examples/

## Singular
for i in \
HilbertPolynomial.g \
Purity.g \
FilteredByPurity.g \
Triangle.g \
Complexes.g \
P1.g \
Schenck-3.2.g \
Schenck-8.3.g \
Schenck-8.3.3.g \
NonCohenMacaulayMonomialIdeal.g \
VectorBundleOnP1_Example5.1.g \
VectorBundleOnP1_Example5.2.g \
; do
    echo -e "\n"
    echo "========================="
    echo $i "(GradedModules)"
    echo "========================="
    gapL $i < /dev/null
done

## MAGMA
cd MAGMA

for i in \
HilbertPolynomial.g \
Purity.g \
FilteredByPurity.g \
Triangle.g \
Complexes.g \
P1.g \
Schenck-3.2.g \
Schenck-8.3.g \
Schenck-8.3.3.g \
; do
    echo -e "\n"
    echo "========================="
    echo MAGMA/$i "(GradedModules)"
    echo "========================="
    gapL $i < /dev/null
done

cd ../

## Macaulay2
cd Macaulay2

for i in \
Purity.g \
FilteredByPurity.g \
Triangle.g \
Complexes.g \
P1.g \
Schenck-3.2.g \
Schenck-8.3.g \
Schenck-8.3.3.g \
VectorBundleOnP1_Example5.1.g \
; do
    echo -e "\n"
    echo "========================="
    echo Macaulay2/$i "(GradedModules)"
    echo "========================="
    gapL $i < /dev/null
done

cd ../

## Maple
cd maple

for i in \
HilbertPolynomial.g \
Purity.g \
FilteredByPurity.g \
P1.g \
Schenck-3.2.g \
Schenck-8.3.g \
Schenck-8.3.3.g \
VectorBundleOnP1_Example5.1.g \
; do
    echo -e "\n"
    echo "========================="
    echo maple/$i "(GradedModules)"
    echo "========================="
    gapL $i < /dev/null
done

cd ../

## END

cd ../..
