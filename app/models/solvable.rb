class Solvable < ActiveRecord::Base
  attr_accessible :entry, :word, :word_type

  belongs_to :entry
  belongs_to :word
end
