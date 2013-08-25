class RemoveWordReferencesFromEntries < ActiveRecord::Migration
  def change
    remove_column :entries, :answer_word_id
    remove_column :entries, :base_phrase_id
  end
end
