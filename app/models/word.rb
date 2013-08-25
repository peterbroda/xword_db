class Word < ActiveRecord::Base
  attr_accessible :grid_text, :full_text

  has_many :solvables
  has_many :entries, :through => :solvables
end
