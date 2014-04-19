#!/bin/bash

FILES=/home/peter/xword_db/db/NF_seedfiles/round_2/*.rb
for f in $FILES
do
  echo "Processing $f ..."
  ./compute_size.pl $f
  mv size_out $f
done
