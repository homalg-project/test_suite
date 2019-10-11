#!/bin/bash

. $(dirname $0)/init_homalg_project_test_suite

cd $PKG_PATH

# TODO: Sheaves_maple.g Sheaves_Macaulay.g
L="Sheaves_Singular.g Sheaves_MAGMA.g"

for i in $L; do
  {
  echo -e "\n"
  echo -e "\033[1;33;41m"
  echo "~~~~~~~~~~~~~~~~~~~~~~~~~"
  echo -e "\033[0m"
  echo $i
  echo -e "\033[1;33;41m"
  echo "~~~~~~~~~~~~~~~~~~~~~~~~~"
  echo -e "\033[0m"
  } >&2
  sh -c "$BIN_PATH/${i}"
done

echo -e "\a\a\a"
