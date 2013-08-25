class RemoveWordsEntriesJoinTable < ActiveRecord::Migration
  def change
    drop_table :entries_words
  end
end
