class AddBlockCountToPuzzles < ActiveRecord::Migration
  def up
    add_column :puzzles, :block_count, :integer
  end

  def down
    remove_column :puzzles, :block_count
  end
end
