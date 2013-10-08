#!/bin/bash

FILES=/home/peter/xword_db/db/inkwell_seedfiles/2011/*.rb
for f in $FILES
do
  echo "Processing $f ..."
  ./remove_extra_solvables.pl $f
  mv solvable_out $f
done
