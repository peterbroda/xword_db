class CreateEditorsPuzzlesJoinTable < ActiveRecord::Migration
  def up
    create_table :editors_puzzles, :id => false do |t|
      t.integer :editor_id
      t.integer :puzzle_id
    end
  end

  def down
    drop_table :editors_puzzles
  end
end
