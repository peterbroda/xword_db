class FixSolvableTypeName < ActiveRecord::Migration
  def up
    rename_column :solvables, :type, :word_type
  end

  def down
  end
end
