class ChangeBackSourceName < ActiveRecord::Migration
  def up
	 rename_column :sources, :full_name, :name
  end

  def down
  end
end
