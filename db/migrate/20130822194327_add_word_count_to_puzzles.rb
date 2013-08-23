class AddWordCountToPuzzles < ActiveRecord::Migration
  def up
    add_column :puzzles, :word_count, :integer
  end

  def down
    remove_column :puzzles, :word_count
  end
end
