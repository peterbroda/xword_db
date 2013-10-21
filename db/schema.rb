# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131019230237) do

  create_table "constructors", :force => true do |t|
    t.string   "name"
    t.string   "bio"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "constructors_puzzles", :id => false, :force => true do |t|
    t.integer "constructor_id"
    t.integer "puzzle_id"
  end

  add_index "constructors_puzzles", ["constructor_id"], :name => "index_constructors_puzzles_on_constructor_id"
  add_index "constructors_puzzles", ["puzzle_id"], :name => "index_constructors_puzzles_on_puzzle_id"

  create_table "constructors_sources", :id => false, :force => true do |t|
    t.integer "constructor_id"
    t.integer "source_id"
  end

  add_index "constructors_sources", ["constructor_id"], :name => "index_constructors_sources_on_constructor_id"
  add_index "constructors_sources", ["source_id"], :name => "index_constructors_sources_on_source_id"

  create_table "entries", :force => true do |t|
    t.text     "clue"
    t.string   "answer"
    t.integer  "number"
    t.string   "dir"
    t.integer  "row"
    t.integer  "col"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "puzzle_id"
    t.string   "entry_type"
  end

  add_index "entries", ["puzzle_id"], :name => "index_puzzle_id"

  create_table "puzzles", :force => true do |t|
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "title"
    t.string   "grid"
    t.date     "publication_date"
    t.text     "special_features"
    t.text     "instructions"
    t.text     "explanation"
    t.string   "puzzle_type"
    t.float    "avg_word_length"
    t.integer  "word_count"
    t.integer  "block_count"
    t.string   "size"
    t.integer  "white_square_count"
    t.string   "subtitle"
    t.string   "seq_no"
    t.string   "theme_squares"
  end

  create_table "puzzles_sources", :id => false, :force => true do |t|
    t.integer "puzzle_id"
    t.integer "source_id"
  end

  add_index "puzzles_sources", ["puzzle_id"], :name => "index_puzzles_sources_on_puzzle_id"
  add_index "puzzles_sources", ["source_id"], :name => "index_puzzles_sources_on_source_id"

  create_table "solvables", :force => true do |t|
    t.integer  "entry_id"
    t.integer  "word_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "word_type"
  end

  create_table "sources", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "display_name"
    t.string   "editor"
  end

  create_table "words", :force => true do |t|
    t.string   "grid_text"
    t.string   "full_text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
