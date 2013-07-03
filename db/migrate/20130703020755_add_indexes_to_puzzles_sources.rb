class AddIndexesToPuzzlesSources < ActiveRecord::Migration
  def up
    add_index :puzzles_sources, :source_id
    add_index :puzzles_sources, :puzzle_id
  end

  def down
    remove_index :puzzles_sources, :source_id
    remove_index :puzzles_sources, :puzzle_id
  end
end

