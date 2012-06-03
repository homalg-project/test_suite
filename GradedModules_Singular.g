#!/bin/bash

. $(dirname $0)/init_homalg_project_test_suite

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
GlobalSections.g \
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
    gap $i < /dev/null
done

cd ../..
