#!/bin/bash

. $(dirname $0)/init_homalg_project_test_suite

cd $PKG_PATH

## RingsForHomalg
cd RingsForHomalg/examples/

echo -e "\n"
echo "========================="
echo RingsForHomalg
echo "========================="

echo RingsForHomalg/examples/all.g
gap all.g < /dev/null
echo RingsForHomalg/examples/convert.g
gap convert.g < /dev/null

cd ../..
