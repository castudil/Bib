class AllbibsController < ApplicationController

	def show
		 
		bib = Bib.find(params[:id])
		if bib.tipo == 0 
			@bInpro = Inproceeding.find_by(id_h: bib.id)
		elsif bib.tipo == 1 
			@bArticle = Article.find_by(id_h: bib.id)
		elsif bib.tipo == 2
			@bBook = Book.find_by(id_h: bib.id) 
		elsif bib.tipo == 3
			@bPhd = Phdthesi.find_by(id_h: bib.id) 
		elsif bib.tipo == 4
			@bMth = Masterthesi.find_by(id_h: bib.id) 
		elsif bib.tipo == 5
			@bInco = Incollection.find_by(id_h: bib.id) 
		end
	end

	def index
		@bibtexs = Bib.all
		#@bib = BibTeX.open(bibtex.path)
		@bibtexs = @bibtexs.order(year: :desc)
		@bibtexs = @bibtexs.paginate(:page => params[:page], :per_page => 28)
	end

	def destroy 
		bib = Bib.find(params[:id])
		path = "public/"+bib.path
		if File.exist?(path)		
			File.delete(path)
		end

		if bib.tipo == 0 
			@bInpro = Inproceeding.find_by(id_h: bib.id)
			@bInpro.destroy
		elsif bib.tipo == 1 
			@bArticle = Article.find_by(id_h: bib.id)
			@bArticle.destroy
		elsif bib.tipo == 2
			@bBook = Book.find_by(id_h: bib.id) 
			@bBook.destroy
		elsif bib.tipo == 3
			@bPhd = Phdthesi.find_by(id_h: bib.id) 
			@bPhd.destroy
		end

		bib.destroy
		
		redirect_to allbibs_path 

	end

	
end
