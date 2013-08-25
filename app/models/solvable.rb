class Solvable < ActiveRecord::Base
  attr_accessible :entry, :word

  belongs_to :entry
  belongs_to :word
end
