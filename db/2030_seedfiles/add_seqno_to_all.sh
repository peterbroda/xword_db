#!/bin/bash

for dir in /home/peter/xword_db/db/2030_seedfiles
do
  FILES=$dir/*seeds.rb
  for f in $FILES
  do
    echo "Processing $f ..."
    ./add_seqno.pl $f
    mv seqn_out $f
  done
done
