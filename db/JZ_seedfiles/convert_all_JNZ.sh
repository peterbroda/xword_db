#!/bin/bash

FILES=/home/peter/xword_db/db/JZ_seedfiles/*seeds.rb
for f in $FILES
do
  echo "Checking $f ..."
  ./find_spec_feat.pl $f
  mv spec_feat_out spec_feat
done
