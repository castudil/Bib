class Inproceeding < ActiveRecord::Base
	belongs_to :bibtex
	acts_as_heir_of :bib

  private
  def attributes_protected_by_default
    []
  end


end
