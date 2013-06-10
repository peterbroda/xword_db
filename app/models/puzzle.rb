class Puzzle < ActiveRecord::Base
  attr_accessible :xpf_file

  validates :xpf_file,	:presence => true
end
