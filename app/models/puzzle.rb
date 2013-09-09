class Puzzle < ActiveRecord::Base
  attr_accessible :grid, :title, :constructors, :sources, :publication_date, :entries, :special_features, :instructions, :explanation, :puzzle_type, :size, :word_count, :block_count, :avg_word_length, :white_square_count, :subtitle

  validates :grid,	:presence => true

  has_and_belongs_to_many :constructors
  has_and_belongs_to_many :editors
  has_and_belongs_to_many :sources

  has_many :entries

  default_scope order('publication_date ASC')
end
