#!/bin/bash

FILES=/home/peter/xword_db/db/NF_seedfiles/*.rb
for f in $FILES
do
  echo "Processing $f ..."
  ./add_solvables.pl $f
  mv solvable_out $f
done