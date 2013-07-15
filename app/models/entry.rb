class Entry < ActiveRecord::Base
  attr_accessible :answer, :clue, :col, :dir, :number, :row

  belongs_to :puzzle
end
