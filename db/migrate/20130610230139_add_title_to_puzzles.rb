class AddTitleToPuzzles < ActiveRecord::Migration
  def change
    add_column :puzzles, :title, :string
  end
end
