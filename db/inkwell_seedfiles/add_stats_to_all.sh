#!/bin/bash

FILES=/home/peter/xword_db/db/inkwell_seedfiles/2012/*seeds.rb
for f in $FILES
do
  echo "Processing $f ..."
  ./add_stats.pl $f
  mv stats_out $f
done
