class HomeController < ApplicationController
	layout "main_home"
	def index
		@users = User.last(3) # last 3 records in ascending order
	end
	
end
