class Bib < ActiveRecord::Base
	self.per_page = 30
	has_one :pdf 
	acts_as_predecessor
	belongs_to :bibtex
	# tipo
	# Inproceeding = 0 
	# Article      = 1 
	# Book         = 2 
	# Phdthesis    = 3 
 
  private
  def attributes_protected_by_default
    []
  end


end
