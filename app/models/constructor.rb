class Constructor < ActiveRecord::Base
  attr_accessible :bio, :name

  has_and_belongs_to_many :puzzles
  has_and_belongs_to_many :sources
end
