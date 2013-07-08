namespace :xword_db do
  desc "Add database rows from custom seed files. The file should be a .rb file"
  task :populate_db_from_file => :environment do
    require "/home/peter/xword_db/db/AV_old_all_seeds.rb"
    require "/home/peter/xword_db/db/IW_2006_seeds.rb"
    require "/home/peter/xword_db/db/IW_2007_seeds.rb"
    require "/home/peter/xword_db/db/IW_2008_seeds.rb"
    require "/home/peter/xword_db/db/IW_2009_seeds.rb"
    require "/home/peter/xword_db/db/IW_2010_seeds.rb"
    require "/home/peter/xword_db/db/IW_2011_seeds.rb"
    require "/home/peter/xword_db/db/IW_2012_seeds.rb"
    require "/home/peter/xword_db/db/CN_all_seeds.rb"
    require "/home/peter/xword_db/db/MGWCC_all_seeds.rb"
    require "/home/peter/xword_db/db/BK_wrath_seeds.rb"
    require "/home/peter/xword_db/db/MAS_triple_seeds.rb"
    require "/home/peter/xword_db/db/TM_autofill_seeds.rb"
    require "/home/peter/xword_db/db/AK_cal_seeds.rb"
  end
end
