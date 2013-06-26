class AddIndexesToEditorsPuzzles < ActiveRecord::Migration
  def up
    add_index :editors_puzzles, :editor_id
    add_index :editors_puzzles, :puzzle_id
  end

  def down
    remove_index :editors_puzzles, :editor_id
    remove_index :editors_puzzles, :puzzle_id
  end
end
