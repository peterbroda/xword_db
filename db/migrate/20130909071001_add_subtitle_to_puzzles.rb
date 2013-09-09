class AddSubtitleToPuzzles < ActiveRecord::Migration
  def change
    add_column :puzzles, :subtitle, :string
  end
end
