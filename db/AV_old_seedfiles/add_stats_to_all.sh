#!/bin/bash

FILES=/home/peter/xword_db/db/AV_old_seedfiles/*seeds.rb
for f in $FILES
do
  echo "Processing $f ..."
  ./add_stats.pl $f
  mv stats_out $f
done
