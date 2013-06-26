class CreateConstructorsPuzzlesJoinTable < ActiveRecord::Migration
  def up
    create_table :constructors_puzzles, :id => false do |t|
      t.integer :constructor_id
      t.integer :puzzle_id
    end
  end

  def down
    drop_table :constructors_puzzles
  end
end
