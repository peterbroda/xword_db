class AddExplanationToPuzzles < ActiveRecord::Migration
  def up
    add_column :puzzles, :explanation, :text
  end

  def down
    remove_column :puzzles, :explanation
  end
end
