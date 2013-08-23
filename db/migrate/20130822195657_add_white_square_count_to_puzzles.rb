class AddWhiteSquareCountToPuzzles < ActiveRecord::Migration
  def up
    add_column :puzzles, :white_square_count, :integer
  end

  def down
    remove_column :puzzles, :white_square_count
  end
end
