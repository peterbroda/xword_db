class Puzzle < ActiveRecord::Base
  attr_accessible :grid, :title, :constructors, :sources, :publication_date, :entries, :special_features, :instructions, :explanation, :puzzle_type, :size, :word_count, :block_count, :avg_word_length, :white_square_count, :subtitle, :seq_no, :theme_squares

  validates :grid,	:presence => true

  has_and_belongs_to_many :constructors
  has_and_belongs_to_many :sources

  has_many :entries

  default_scope order('publication_date ASC')

  def self.search(search_term, search_type)
    if search_term && search_type
      if search_type.eql?('type')
	find(:all, :conditions => ['puzzle_type LIKE ?', "%#{search_term}%"])
      end
    else
      []
    end
  end

end
