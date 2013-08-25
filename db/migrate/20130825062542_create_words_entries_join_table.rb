class CreateWordsEntriesJoinTable < ActiveRecord::Migration
  def up
    create_table :entries_words, :id => false do |t|
      t.integer :entry_id
      t.integer :word_id
    end
  end

  def down
    drop_table :entries_words
  end
end
