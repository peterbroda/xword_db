class AddSizeToPuzzles < ActiveRecord::Migration
  def up
    add_column :puzzles, :size, :string
  end

  def down
    remove_column :puzzles, :size
  end
end
