class DropEditorsPuzzles < ActiveRecord::Migration
  def change
    drop_table :editors_puzzles
  end
end
