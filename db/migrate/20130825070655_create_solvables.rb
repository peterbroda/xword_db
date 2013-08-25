class CreateSolvables < ActiveRecord::Migration
  def change
    create_table :solvables do |t|
      t.integer :entry_id
      t.integer :word_id

      t.timestamps
    end
  end
end
