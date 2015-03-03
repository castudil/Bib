require 'bibtex'
class JsonsController < ApplicationController

	def show 
		bib = Bib.find(params[:id])
		path = "public"+bib.path
		if File.exist?(path)

			@json = BibTeX.open(path).to_json
		end
		
	end


end
