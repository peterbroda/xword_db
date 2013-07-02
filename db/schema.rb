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

ActiveRecord::Schema.define(:version => 20130702202004) do

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

  create_table "editors", :force => true do |t|
    t.string   "name"
    t.string   "bio"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "editors_puzzles", :id => false, :force => true do |t|
    t.integer "editor_id"
    t.integer "puzzle_id"
  end

  add_index "editors_puzzles", ["editor_id"], :name => "index_editors_puzzles_on_editor_id"
  add_index "editors_puzzles", ["puzzle_id"], :name => "index_editors_puzzles_on_puzzle_id"

  create_table "puzzles", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "title"
    t.string   "grid"
  end

  create_table "puzzles_sources", :id => false, :force => true do |t|
    t.integer "puzzle_id"
    t.integer "source_id"
  end

  create_table "sources", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
