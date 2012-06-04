#!/bin/bash

. $(dirname $0)/init_homalg_project_test_suite

cd $PKG_PATH

L="ExamplesForHomalg_Singular.g ExamplesForHomalg_MAGMA.g ExamplesForHomalg_maple.g ExamplesForHomalg_Macaulay.g ExamplesForHomalg_GAP.g"

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
