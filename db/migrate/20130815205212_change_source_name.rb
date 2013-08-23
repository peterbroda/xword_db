class ChangeSourceName < ActiveRecord::Migration
  def up
	rename_column :sources, :name, :full_name
  end

  def down
  end
end
