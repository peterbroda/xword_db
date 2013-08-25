class AddWordReferencesToEntries < ActiveRecord::Migration
  def change

    add_column :entries, :answer_word_id, :integer
    add_index 'entries', ['answer_word_id'], :name => 'index_answer_word_id'
    
    add_column :entries, :base_phrase_id, :integer
    add_index 'entries', ['base_phrase_id'], :name => 'index_base_phrase_id'
  end
end
