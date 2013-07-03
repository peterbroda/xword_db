class Puzzle < ActiveRecord::Base
  attr_accessible :grid, :title, :constructors, :sources, :publication_date

  validates :grid,	:presence => true

  has_and_belongs_to_many :constructors
  has_and_belongs_to_many :editors
  has_and_belongs_to_many :sources

  default_scope order('publication_date ASC')
end
