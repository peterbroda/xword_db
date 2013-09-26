class AddSeqNoToPuzzles < ActiveRecord::Migration
  def change
    add_column :puzzles, :seq_no, :string
  end
end
