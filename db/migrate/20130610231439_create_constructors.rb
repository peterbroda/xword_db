class CreateConstructors < ActiveRecord::Migration
  def change
    create_table :constructors do |t|
      t.string :name
      t.string :bio

      t.timestamps
    end
  end
end
