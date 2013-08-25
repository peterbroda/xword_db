class Entry < ActiveRecord::Base
  attr_accessible :answer, :clue, :col, :dir, :number, :row

  belongs_to :puzzle
  has_many :solvables
  has_many :words, :through => :solvables
end
