class AddSpecialFeaturesToPuzzles < ActiveRecord::Migration
  def up
    add_column :puzzles, :special_features, :text
  end

  def down
    remove_column :puzzles, :special_features
  end
end
