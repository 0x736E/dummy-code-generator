#!/bin/sh

# CONSTANTS
RED='\033[0;31m'
NC='\033[0m' # No Color
COUNT=1000
SRC_DIR="./config/schema"
DST_DIR="./data/"

# MAIN ENTRY
ORIGIN="${PWD}"
cd "${SRC_DIR}/"
for file in ./**/*.json; do
  echo "${RED}${file}${NC}"
  datahelix --quiet --visualiser-level=OFF --output-format=JSON --max-rows="${COUNT}" --replace -p "${file}" -o "${ORIGIN}/${DST_DIR}/${file}"
done
