class AddThemeSquaresToPuzzles < ActiveRecord::Migration
  def change
    add_column :puzzles, :theme_squares, :string
  end
end
