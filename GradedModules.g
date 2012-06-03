#!/bin/bash

. $(dirname $0)/init_homalg_project_test_suite

cd $PKG_PATH

L="GradedModules_Singular.g GradedModules_MAGMA.g GradedModules_maple.g GradedModules_Macaulay.g"

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
