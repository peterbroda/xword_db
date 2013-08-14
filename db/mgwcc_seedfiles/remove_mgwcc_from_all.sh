#!/bin/bash

FILES=/home/peter/xword_db/db/mgwcc_seedfiles/*.rb
for f in $FILES
do
  echo "Processing $f ..."
  ./remove_mgwcc_from_title.pl $f
  mv type_out.rb $f
done

