class AddReferencesToPuzzlesAndEntries < ActiveRecord::Migration
  def up
    add_column :entries, :puzzle_id, :integer
    add_index 'entries', ['puzzle_id'], :name => 'index_puzzle_id'
  end

  def down
    remove_column :entries, :puzzle_id
  end

end
