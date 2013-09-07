#!/bin/bash

FILES=/home/peter/xword_db/db/BEQ_seedfiles/*seeds.rb
for f in $FILES
do
  echo "Processing $f ..."
  ./escape_apos_in_title.pl $f
  mv apos_out $f
done
