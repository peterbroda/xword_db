class AddInstructionsToPuzzles < ActiveRecord::Migration
  def up
    add_column :puzzles, :instructions, :text
  end

  def down
    remove_column :puzzles, :instructions
  end
end
