#!/bin/bash

FILES=/home/peter/xword_db/script/*.xpf
for f in $FILES
do
  echo "Processing $f ..."
  ./xpf_to_seeds.pl $f
  mv seeds_out.rb seeds.rb
done
