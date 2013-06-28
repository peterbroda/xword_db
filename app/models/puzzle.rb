class Puzzle < ActiveRecord::Base
  attr_accessible :grid

  validates :grid,	:presence => true

  has_and_belongs_to_many :constructors
  has_and_belongs_to_many :editors
end
