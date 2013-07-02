class Puzzle < ActiveRecord::Base
  attr_accessible :grid, :title, :constructors

  validates :grid,	:presence => true

  has_and_belongs_to_many :constructors
  has_and_belongs_to_many :editors
  has_and_belongs_to_many :sources
end
