#!/bin/bash

FILES=/home/peter/xword_db/db/NF_seedfiles/*.rb
for f in $FILES
do
  echo "Processing $f ..."
  ./remove_puzzle_in_title.pl $f
  mv type_out.rb $f
done
