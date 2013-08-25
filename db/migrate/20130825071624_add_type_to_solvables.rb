class AddTypeToSolvables < ActiveRecord::Migration
  def change
    add_column :solvables, :type, :string
  end
end
