class Word < ActiveRecord::Base
  attr_accessible :grid_text, :full_text, :solvables

  validates :grid_text, :uniqueness => true

  has_many :solvables
  has_many :entries, :through => :solvables
end
