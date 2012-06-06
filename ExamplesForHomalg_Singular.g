#!/bin/bash

. $(dirname $0)/init_homalg_project_test_suite

cd $PKG_PATH

## ExamplesForHomalg
cd ExamplesForHomalg/examples/

## Singular
for i in \
Purity.g \
TorExt.g \
ExtExt.g \
A3_Purity.g \
Triangle.g \
Complexes.g \
EdW.g \
Auslander-Buchsbaum.g \
Eliminate.g \
BurchProjectiveDimension.g \
CheckParametrization.g \
DerShift.g \
Eliminate.g \
IdealvsSubobjectProperties.g \
CohenMacaulayModule.g \
CohenMacaulayRing.g \
NonCohenMacaulayModuleNonEquidimensional.g \
NonCohenMacaulayRingNonEquidimensional.g \
ProjectiveOfNonconstantRank_Rank0.g \
ReflexiveNonProjectiveIdeal.g \
ShortenResolution.g \
WhySpectral.g \
HilbertPolynomial.g \
Gcd_UsingCayleyDeterminant.g \
SimplerEquivalentMatrix.g \
; do
    echo -e "\n"
    echo "========================="
    echo $i "(ExamplesForHomalg)"
    echo "========================="
    gap $i < /dev/null
done

cd ../..
