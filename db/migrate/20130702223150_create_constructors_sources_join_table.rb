class CreateConstructorsSourcesJoinTable < ActiveRecord::Migration
  def up
    create_table :constructors_sources, :id => false do |t|
      t.integer :constructor_id
      t.integer :source_id      
    end
  end

  def down
    drop_table :constructors_sources
  end
end
