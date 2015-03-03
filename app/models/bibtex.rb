class Bibtex < ActiveRecord::Base
	
	validates :filename, presence: true

	has_many :inproceedings, dependent: :destroy
	has_many :books, dependent: :destroy
	has_many :articles, dependent: :destroy
	has_many :bibs, dependent: :destroy
	has_many :phdthesi, dependent: :destroy

	
end