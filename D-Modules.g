#!/bin/bash

. $(dirname $0)/init_homalg_project_test_suite

cd $PKG_PATH

## D-Modules
cd D-Modules/examples/

for i in \
Localized_Reiffen.g \
; do
    echo -e "\n"
    echo "========================="
    echo $i "(D-Modules)"
    echo "========================="
    gap $i < /dev/null
done

cd ../..
