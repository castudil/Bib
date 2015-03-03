require 'bibtex' 
class BibtexsController < ApplicationController

	def new
		@bibtex = Bibtex.new
	end

	def show
		bibtex = Bibtex.find(params[:id])
		#@bib = BibTeX.open(bibtex.path)
		@bibtexs = bibtex.inproceedings.group("year")

	end

	def create
		#flash[:notice] = "File uploaded"
		
		filename = params[:upload][:file].original_filename

		#in SQL  : Bibtex.where(filename: 'Lifo').take
		@bibtex = Bibtex.find_by filename: filename #validate duplicate bibtex rows

		if @bibtex == nil

		    directory = "public/bibtexs"
		    @bibtex = Bibtex.new(:filename => filename, :path => "#{directory}/#{filename}")

		    path = File.join(directory, filename)
		    File.open(path, "wb") { |f| f.write(params[:upload][:file].read) }
		    
		    @bibtex.save
		else
			@bibtex.destroy

			directory = "public/bibtexs"
			@bibtex = Bibtex.new(:filename => filename, :path => "#{directory}/#{filename}")

		    path = File.join(directory, filename)
		    File.open(path, "wb") { |f| f.write(params[:upload][:file].read) }

		    @bibtex.save
			
		end

		@bib = BibTeX.open(@bibtex.path) 
		inproceedings = @bib['@inproceedings']
		inproceedings.each do |inproceeding|
			
			inproceed = Inproceeding.new( :author => inproceeding[:author].to_s ,:title => inproceeding[:title].to_s, 
				 :booktitle => inproceeding[:booktitle].to_s ,
				:year => inproceeding[:year].to_s  ,:editor => inproceeding[:editor].to_s ,
				:pages => inproceeding[:pages].to_s ,:address => inproceeding[:address].to_s ,
				:publisher => inproceeding[:publisher].to_s ,:doi => inproceeding[:doi].to_s ,
				:isbn => inproceeding[:isbn].to_s ,:location => inproceeding[:location].to_s ,
				:abstract => inproceeding[:abstract].to_s ,:bibsource => inproceeding[:bibsource].to_s ,
				:crossref => inproceeding[:crossref].to_s ,:ee => inproceeding[:ee].to_s ,  
				:file => inproceeding[:file].to_s ,:owner => inproceeding[:owner].to_s  ,
				:timestamp => inproceeding[:timestamp].to_s ,:url => inproceeding[:url].to_s ,  
				:review => inproceeding[:review].to_s ,:issn => inproceeding[:issn].to_s , 
				:keywords => inproceeding[:keywords].to_s , :bibtex_id => @bibtex.id, :tipo => 0,
				:path => "/inproceedings/#{inproceeding[:title].to_s.delete(' ')}.bib"
				
				)
			
				inproceed.save
				bib = Bib.last
				inproceed.id_h = bib.id

				inproceed.save

  
    			b = BibTeX.parse <<-END
					@inproceedings{pickaxe,
					  author = { #{ inproceeding[:author].to_s } },
					  title = { #{ inproceeding[:title].to_s } },
					  year = { #{ inproceeding[:year].to_s } },
					  booktitle = { #{ inproceeding[:booktitle].to_s } },
					  editor = { #{ inproceeding[:editor].to_s } },
					  pages = { #{ inproceeding[:pages].to_s } },
					  publisher = { #{ inproceeding[:publisher].to_s } },
					  doi = { #{ inproceeding[:doi].to_s } },
					  isbn = { #{ inproceeding[:isbn].to_s } },
					  location = { #{ inproceeding[:location].to_s } },
					  abstract = { #{ inproceeding[:abstract].to_s } },
					  bibsource = { #{ inproceeding[:bibsource].to_s } },
					  crossref = { #{ inproceeding[:crossref].to_s } },
					  ee = { #{ inproceeding[:ee].to_s } },
					  file = { #{ inproceeding[:file].to_s } },
					  owner = { #{ inproceeding[:owner].to_s } },
					  timestamp = { #{ inproceeding[:timestamp].to_s } },
					  url = { #{ inproceeding[:url].to_s } },
					  review = { #{ inproceeding[:review].to_s } },
					  issn = { #{ inproceeding[:issn].to_s } },
					  keywords = { #{ inproceeding[:keywords].to_s } }
				}
				END
			
			title = inproceed.title.delete(' ')
			path = "public/inproceedings/#{title}.bib"
			content = b
			File.open(path, "w+") do |f|
			  f.write(content)
			end


		end


		articles = @bib['@article'] #tipo 1 
		articles.each do |article|
		
			articl = Article.new( :author => article[:author].to_s ,:title => article[:title].to_s, 
				 
				:year => article[:year].to_s  ,
				:pages => article[:pages].to_s ,
				:publisher => article[:publisher].to_s ,:doi => article[:doi].to_s ,
				:journal => article[:journal].to_s ,
				:abstract => article[:abstract].to_s ,
		 		:number => article[:number].to_s ,
		 		:volume => article[:volume].to_s ,
		 		:month => article[:month].to_s ,
		 		:issue => article[:issue].to_s ,
				:file => article[:file].to_s ,:owner => article[:owner].to_s  ,
				:timestamp => article[:timestamp].to_s ,:url => article[:url].to_s ,  
				:issn => article[:issn].to_s , 
				:keyword => article[:keyword].to_s , :bibtex_id => @bibtex.id, :tipo => 1,
				:path => "/articles/#{article[:title].to_s.delete(' ')}.bib"
				)
				articl.save
				bib = Bib.last
				articl.id_h = bib.id

				articl.save

			b = BibTeX.parse <<-END
			@article{pickaxe,
			  author = { #{ article[:author].to_s } },
			  title = { #{ article[:title].to_s } },
			  year = { #{ article[:year].to_s } },
			  pages = { #{ article[:pages].to_s } },
			  publisher = { #{ article[:publisher].to_s } },
			  journal = { #{ article[:journal].to_s } },
			  abstract = { #{ article[:abstract].to_s } },
			  volume = { #{ article[:volume].to_s } },
			  month = { #{ article[:month].to_s } },
			  issue = { #{ article[:issue].to_s } },
			  file = { #{ article[:file].to_s } },
			  owner = { #{ article[:owner].to_s } },
			  timestamp = { #{ article[:timestamp].to_s } },
			  url = { #{ article[:url].to_s } },
			  issn = { #{ article[:issn].to_s } },
			  keyword = { #{ article[:keyword].to_s } }
			}
			END
			
			title = articl.title.delete(' ')
			path = "public/articles/#{title}.bib"
			content = b
			File.open(path, "w+") do |f|
			  f.write(content)
			end


	
		end


		
		books= @bib['@book'] #tipo 2 
		books.each do |book|
		
			boo = Book.new( :author => book[:author].to_s ,:title => book[:title].to_s, 		 
				:year => book[:year].to_s  ,
				:pages => book[:pages].to_s ,
				:publisher => book[:publisher].to_s ,:doi => book[:doi].to_s ,
				:address => book[:address].to_s ,
				:edition => book[:edition].to_s ,
		 		:note => book[:note].to_s ,
		 		:month => book[:month].to_s ,
				:owner => book[:owner].to_s  ,
				:timestamp => book[:timestamp].to_s ,:url => book[:url].to_s ,  
				:isbn => book[:isbn].to_s , 
				:bibtex_id => @bibtex.id, :tipo => 2,
				:path => "/books/#{book[:title].to_s.delete(' ')}.bib"
				)
			boo.save
			bib = Bib.last
			boo.id_h = bib.id

			boo.save

			b = BibTeX.parse <<-END
			@book{pickaxe,
			  author = { #{ book[:author].to_s } },
			  title = { #{ book[:title].to_s } },
			  year = { #{ book[:year].to_s } },
			  pages = { #{ book[:pages].to_s } },
			  publisher = { #{ book[:publisher].to_s } },
			  doi = { #{ book[:doi].to_s } },
			  address = { #{ book[:address].to_s } },
			  edition = { #{ book[:edition].to_s } },
			  note = { #{ book[:note].to_s } },
			  month = { #{ book[:month].to_s } },
			  issue = { #{ book[:issue].to_s } },
			  file = { #{ book[:file].to_s } },
			  owner = { #{ book[:owner].to_s } },
			  timestamp = { #{ book[:timestamp].to_s } },
			  url = { #{ book[:url].to_s } },
			  isbn = { #{ book[:isbn].to_s } }
			}
			END


			title = boo.title.delete(' ')
			path = "public/books/#{title}.bib"
			content = b
			File.open(path, "w+") do |f|
			  f.write(content)
			end


			
		end


		thesis = @bib['@phdthesis'] #tipo 3 
		thesis.each do |thesi|
		
			thes = Phdthesi.new( :author => thesi[:author].to_s ,:title => thesi[:title].to_s, 		 
				:year => thesi[:year].to_s  ,
				:school => thesi[:school].to_s ,
				:owner => thesi[:owner].to_s ,:timestamp => thesi[:timestamp].to_s ,
				:address => thesi[:address].to_s ,
		 		:file => thesi[:file].to_s ,
				:url => thesi[:url].to_s  ,
				:bibtex_id => @bibtex.id, :tipo => 3,
				:path => "/phdthesis/#{thesi[:title].to_s.delete(' ')}.bib"
				)
			thes.save
			bib = Bib.last
			thes.id_h = bib.id

			thes.save
			
	

			b = BibTeX.parse <<-END
				@phdthesis{pickaxe,
				  author = { #{ thesi[:author].to_s } },
				  title = { #{ thesi[:title].to_s } },
				  year = { #{ thesi[:year].to_s } },
				  school = { #{ thesi[:school].to_s } },
				  owner = { #{ thesi[:owner].to_s } },
				  timestamp = { #{ thesi[:timestamp].to_s } },
				  address = { #{ thesi[:address].to_s } },
				  file = { #{ thesi[:file].to_s } },
				  url = { #{ thesi[:url].to_s } } 
			}
			END
		
			title = thesi.title.delete(' ')
			path = "public/phdthesis/#{title}.bib"
			content = b
			File.open(path, "w+") do |f|
			  f.write(content)
			end


			
		end


		mastertesis = @bib['@mastersthesis'] #tipo 4
		mastertesis.each do |mthesi|
		
			mthes = Masterthesi.new( :author => mthesi[:author].to_s ,:title => mthesi[:title].to_s, 		 
				:year => mthesi[:year].to_s  ,
				:school => mthesi[:school].to_s ,
				:address => mthesi[:address].to_s ,
		 		:month => mthesi[:month].to_s,
				:bibtex_id => @bibtex.id, :tipo => 4,
				:path => "/mastersthesis/#{mthesi[:title].to_s.delete(' ')}.bib"
				)
			mthes.save
			bib = Bib.last
			mthes.id_h = bib.id

			mthes.save
			
	

			b = BibTeX.parse <<-END
				@mastersthesis{pickaxe,
				  author = { #{ mthesi[:author].to_s } },
				  title = { #{ mthesi[:title].to_s } },
				  year = { #{ mthesi[:year].to_s } },
				  school = { #{ mthesi[:school].to_s } },
				  address = { #{ mthesi[:address].to_s } },
				  month = { #{ mthesi[:month].to_s } }
			}
			END
		
			title = mthesi.title.delete(' ')
			path = "public/mastersthesis/#{title}.bib"
			content = b
			File.open(path, "w+") do |f|
			  f.write(content)
			end

			
		end

		incollections = @bib['@incollection'] #tipo 5
		incollections.each do |incollec|
		
			inco = Incollection.new( :author => incollec[:author].to_s ,:title => incollec[:title].to_s, 		 
				:year => incollec[:year].to_s  ,
				:booktitle => incollec[:booktitle].to_s ,
				:publisher => incollec[:publisher].to_s ,
		 		:keywords => incollec[:keywords].to_s,
		 		:editor => incollec[:editor].to_s,
		 		:volume => incollec[:volume].to_s,
		 		:series => incollec[:series].to_s,
		 		:pages => incollec[:pages].to_s,
		 		:abstract => incollec[:abstract].to_s,
		 		:affiliation => incollec[:affiliation].to_s,
		 		:doi => incollec[:doi].to_s,
		 		:file => incollec[:file].to_s,
		 		:isbn => incollec[:isbn].to_s,
				:bibtex_id => @bibtex.id, :tipo => 5,
				:path => "/incollections/#{incollec[:title].to_s.delete(' ')}.bib"
				)
			inco.save
			bib = Bib.last
			inco.id_h = bib.id

			inco.save
			
			b = BibTeX.parse <<-END
				@incollection{pickaxe,
				  author = { #{ incollec[:author].to_s } },
				  title = { #{ incollec[:title].to_s } },
				  year = { #{ incollec[:year].to_s } },
				  booktitle = { #{ incollec[:booktitle].to_s } },
				  publisher = { #{ incollec[:publisher].to_s } },
				  keywords = { #{ incollec[:keywords].to_s } } ,
				  editor = { #{ incollec[:editor].to_s } } ,
				  volume = { #{ incollec[:volume].to_s } } ,
				  series = { #{ incollec[:series].to_s } } ,
				  pages = { #{ incollec[:pages].to_s } } ,
				  abstract = { #{ incollec[:abstract].to_s } } ,
				  affiliation = { #{ incollec[:affiliation].to_s } } ,
				  doi = { #{ incollec[:doi].to_s } } ,
				  file = { #{ incollec[:file].to_s } } ,
				  isbn = { #{ incollec[:isbn].to_s } } ,
				  file = { #{ incollec[:file].to_s } } ,

			}
			END
		
			title = incollec.title.delete(' ')
			path = "public/incollections/#{title}.bib"
			content = b
			File.open(path, "w+") do |f|
			  f.write(content)
			end

			
		end


		redirect_to bibtexs_path


	end

	def destroy
		bibtex = Bibtex.find(params[:id])
		

		if File.exist?(bibtex.path)
		
			File.delete(bibtex.path)
		end

		files = Bib.where("bibtex_id = ?" , bibtex.id) #bibtex files
		files.each do |file|
			path = "public/"+file.path
			if File.exist?(path)
			
				File.delete(path) #to delete bibtex from system
			end
		end

		bibtex.destroy
		
		redirect_to bibtexs_path 
	end

	def index
		@bibtexs = Bibtex.all
		
	end

	private
	def bibtex_params
		params.require(:bibtex).permit(:filename,:path)
	end

end
