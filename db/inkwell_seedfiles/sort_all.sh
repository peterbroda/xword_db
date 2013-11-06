#!/bin/bash

ls 2005 | grep seeds.rb >> all_sorted
ls 2006 | grep seeds.rb >> all_sorted
ls 2007 | grep seeds.rb >> all_sorted
ls 2008 | grep seeds.rb >> all_sorted
ls 2009 | grep seeds.rb >> all_sorted
ls 2010 | grep seeds.rb >> all_sorted
ls 2011 | grep seeds.rb >> all_sorted
ls 2012 | grep seeds.rb >> all_sorted

./sort_by_date.pl all_sorted

mv sorted_out seqnos_all

rm all_sorted
