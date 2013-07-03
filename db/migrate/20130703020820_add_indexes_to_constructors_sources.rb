class AddIndexesToConstructorsSources < ActiveRecord::Migration
  def up
    add_index :constructors_sources, :constructor_id
    add_index :constructors_sources, :source_id
  end

  def down
    remove_index :constructors_sources, :constructor_id
    remove_index :constructors_sources, :source_id
  end
end

