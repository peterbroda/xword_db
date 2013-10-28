class AddStaticGridToPuzzles < ActiveRecord::Migration
  def up
    add_column :puzzles, :static_grid, :string
  end

  def down
    remove_column :puzzles, :static_grid
  end
end
