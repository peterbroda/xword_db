class AddAvgWordLengthToPuzzles < ActiveRecord::Migration
  def up
    add_column :puzzles, :avg_word_length, :float
  end

  def down
    remove_column :puzzles, :avg_word_length
  end
end
