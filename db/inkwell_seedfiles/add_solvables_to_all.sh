#!/bin/bash

FILES=/home/peter/xword_db/db/inkwell_seedfiles/2012/*.rb
for f in $FILES
do
  echo "Processing $f ..."
  ./add_solvables.pl $f
  mv solvable_out $f
done
