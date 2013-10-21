class Source < ActiveRecord::Base
  attr_accessible :description, :display_name, :name, :url, :constructors, :editor

  has_and_belongs_to_many :puzzles
  has_and_belongs_to_many :constructors

  default_scope order('name ASC')

end
