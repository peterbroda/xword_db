#!/bin/bash

FILES=/home/peter/xword_db/db/NF_seedfiles/*.rb
for f in $FILES
do
  echo "Processing $f ..."
  ./compute_size.pl $f
  mv size_out $f
done
