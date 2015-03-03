require 'bibtex' 
class XmsController < ApplicationController

	def show 
		bib = Bib.find(params[:id])
		path = "public"+bib.path
		if File.exist?(path)

			@xml = BibTeX.open(path).to_xml
		end
		
	end

end
