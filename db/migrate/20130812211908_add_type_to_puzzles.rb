class AddTypeToPuzzles < ActiveRecord::Migration
  def up
    add_column :puzzles, :type, :string
  end

  def down
    remove_column :puzzles, :type
  end
end
