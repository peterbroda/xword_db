class AddGridToPuzzles < ActiveRecord::Migration
  def up
    add_column :puzzles, :grid, :string
  end

  def down
    remove_column :puzzles, :grid
  end
end
