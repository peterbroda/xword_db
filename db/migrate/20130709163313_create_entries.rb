class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.text :clue
      t.string :answer
      t.integer :number
      t.string :dir
      t.integer :row
      t.integer :col

      t.timestamps
    end
  end
end
