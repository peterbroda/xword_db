#!/bin/bash

FILES=/home/peter/xword_db/db/BEQ_seedfiles/*seeds.rb
for f in $FILES
do
  echo "Processing $f ..."
  ./move_subtitle.pl $f
  mv subtitle_out $f
done
