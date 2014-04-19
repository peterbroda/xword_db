class Word < ActiveRecord::Base
  attr_accessible :grid_text, :full_text, :solvables

  validates :grid_text, :uniqueness => true

  has_many :solvables
  has_many :entries, :through => :solvables

  def self.search(search)
    results = Array.new

    if search
      sub_search = search.gsub("*", "%")
      sub_search = sub_search.gsub("?", "_")
      sub_search = sub_search.gsub("@", "_")
      sub_search = sub_search.gsub("#", "_")
      results = find(:all, :conditions => ['grid_text LIKE ?', "#{sub_search}"])

      reg_search = search.gsub("*", ".*")
      reg_search = reg_search.gsub("?", ".")
      reg_search = reg_search.gsub("@", "[AEIOUY]")
      reg_search = reg_search.gsub("#", "[BCDFGHJKLMNPQRSTVWXYZ]")
      reg_search = reg_search.upcase      

      temp_results = Array.new()
      results.each do |w|
	if (w.grid_text.upcase =~ /#{reg_search}/)
	  temp_results = temp_results.push(w)
	end
      end
      temp_results
    else
      []
    end
  end
end
