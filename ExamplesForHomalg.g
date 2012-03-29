#!/bin/bash

. $(dirname $0)/init_homalg_project_test_suite

cd $PKG_PATH

## ExamplesForHomalg
cd ExamplesForHomalg/examples/

## Hom(Hom(-,Z128),Z16)_On_Seq.g
for i in \
"Hom(Hom(-,Z128),Z16)_On_Seq.g" \
"GAP/Hom(Hom(-,Z128),Z16)_On_Seq.g" \
"ExternalGAP/Hom(Hom(-,Z128),Z16)_On_Seq.g" \
; do
    echo -e "\n"
    echo "========================="
    echo $i "(ExamplesForHomalg)"
    echo "========================="
    gap $i < /dev/null
done

## FoSys_HoEq_*.g
for i in \
FoSys_HoEq_*.g \
; do
    echo -e "\n"
    echo "========================="
    echo $i "(ExamplesForHomalg)"
    echo "========================="
    gap $i < /dev/null
done

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
; do
    echo -e "\n"
    echo "========================="
    echo $i "(ExamplesForHomalg)"
    echo "========================="
    gap $i < /dev/null
done

## MAGMA
cd MAGMA

for i in \
Purity.g \
TorExt.g \
ExtExt.g \
Triangle.g \
Complexes.g \
EdW.g \
Auslander-Buchsbaum.g \
Gcd_UsingCayleyDeterminant.g \
; do
    echo -e "\n"
    echo "========================="
    echo MAGMA/$i "(ExamplesForHomalg)"
    echo "========================="
    update_from_directory_one_level_up
    gap $i < /dev/null
done

cd ../

## Macaulay2
cd Macaulay2

# EdW.g:	191.906 sec.

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
; do
    echo -e "\n"
    echo "========================="
    echo Macaulay2/$i "(ExamplesForHomalg)"
    echo "========================="
    update_from_directory_one_level_up
    gap $i < /dev/null
done

cd ../

## Maple
cd maple

# TorExt.g:	2572.239 sec.
# ExtExt.g:	

for i in \
Purity.g \
A3_Purity.g \
Eliminate.g \
Purity_OreModules.g \
A3_Purity_OreModules.g \
Auslander-Buchsbaum.g \
HilbertPolynomial.g \
Gcd_UsingCayleyDeterminant.g \
; do
    echo -e "\n"
    echo "========================="
    echo maple/$i "(ExamplesForHomalg)"
    echo "========================="
    update_from_directory_one_level_up
    gap $i < /dev/null
done

cd ../

## END

cd ../..
