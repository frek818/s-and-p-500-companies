#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd $SCRIPT_DIR

# generate new data
python scripts/constituents.py

# Save changes
git add ../data/constituents.csv 
git add ../data/constituents_symbols.txt
git commit -m "[data][skip ci] automatic update" || exit 0
git push origin

