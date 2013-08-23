class AddDisplayNameToSources < ActiveRecord::Migration
  def up
    add_column :sources, :display_name, :string
  end

  def down
    remove_column :sources, :display_name
  end
end
