class AddEditorToSources < ActiveRecord::Migration
  def up
    add_column :sources, :editor, :string
  end

  def down
    remove_column :sources, :editor
  end
end
