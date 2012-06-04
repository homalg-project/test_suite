#!/bin/bash

. $(dirname $0)/init_homalg_project_test_suite

cd $PKG_PATH

## ExamplesForHomalg
cd ExamplesForHomalg/examples/

mkdir -p GAP
mkdir -p ExternalGAP
cp $(echo "Hom(Hom(-,Z128),Z16)_On_Seq.g") GAP/
cp $(echo "Hom(Hom(-,Z128),Z16)_On_Seq.g") ExternalGAP/

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

cd ../..
