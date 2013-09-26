class Word < ActiveRecord::Base
  attr_accessible :grid_text, :full_text, :solvables

  validates :grid_text, :uniqueness => true

  has_many :solvables
  has_many :entries, :through => :solvables

  def self.search(search)
    if search
      search = search.gsub("*", "%")
      search = search.gsub("?", "_")
      find(:all, :conditions => ['grid_text LIKE ?', "#{search}"])
    else
      []
    end
  end
end
