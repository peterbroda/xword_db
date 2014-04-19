#!/bin/bash

FILES=/home/peter/xword_db/db/EA_seedfiles/round_2/*.rb
for f in $FILES
do
  echo "Processing $f ..."
  ./add_type.pl $f
  mv type_out.rb $f
done

