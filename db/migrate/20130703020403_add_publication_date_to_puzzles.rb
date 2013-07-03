class AddPublicationDateToPuzzles < ActiveRecord::Migration
  def up
    add_column :puzzles, :publication_date, :date
  end

  def down
    remove_column :puzzles, :publication_date
  end
end

