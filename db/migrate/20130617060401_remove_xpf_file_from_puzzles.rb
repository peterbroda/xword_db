class RemoveXpfFileFromPuzzles < ActiveRecord::Migration
  def up
    remove_column :puzzles, :xpf_file
  end

  def down
    add_column :puzzles, :xpf_file, :string
  end
end
