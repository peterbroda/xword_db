namespace :xword_db do
  desc "Add database rows from custom seed files. The file should be a .rb file"
  task :populate_db_from_file => :environment do
    require "/home/peter/xword_db/db/IW_2008_seeds.rb"
  end
end
