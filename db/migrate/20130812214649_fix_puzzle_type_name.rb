class FixPuzzleTypeName < ActiveRecord::Migration
  def up
    rename_column :puzzles, :type, :puzzle_type
  end

  def down
  end
end
