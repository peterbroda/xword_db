class AddIndexesToConstructorsPuzzles < ActiveRecord::Migration
  def up
    add_index :constructors_puzzles, :constructor_id
    add_index :constructors_puzzles, :puzzle_id
  end
  def down
    remove_index :constructors_puzzles, :constructor_id
    remove_index :constructors_puzzles, :puzzle_id
  end
end
