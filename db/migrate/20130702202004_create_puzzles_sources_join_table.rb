class CreatePuzzlesSourcesJoinTable < ActiveRecord::Migration
  def up
    create_table :puzzles_sources, :id => false do |t|
      t.integer :puzzle_id
      t.integer :source_id
    end
  end

  def down
    drop_table :puzzles_sources
  end
end
