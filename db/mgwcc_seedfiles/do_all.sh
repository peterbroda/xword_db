#!/bin/bash

FILES=/home/peter/xword_db/db/mgwcc_seedfiles/*seeds.rb
for f in $FILES
do
  echo "Processing $f ..."
  ./change_explanation.pl $f
  mv meta_out $f
done
