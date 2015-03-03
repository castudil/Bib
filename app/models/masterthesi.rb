class Masterthesi < ActiveRecord::Base
	 belongs_to :bibtex
  	acts_as_heir_of :bib
end
