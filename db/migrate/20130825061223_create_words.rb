class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :grid_text
      t.string :full_text
      t.timestamps
    end
  end
end
