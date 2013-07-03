class Source < ActiveRecord::Base
  attr_accessible :description, :name, :url, :constructors

  has_and_belongs_to_many :puzzles
  has_and_belongs_to_many :constructors
end
