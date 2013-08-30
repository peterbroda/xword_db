#!/bin/bash

FILES=/home/peter/xword_db/db/AV_old_seedfiles/*seeds.rb
for f in $FILES
do
  echo "Converting $f to UTF-8"
  ./utf_conversion.pl $f
  mv utf_converted $f
done
