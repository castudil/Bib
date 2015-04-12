class HomeController < ApplicationController
	layout "main_home"
	def index
		#@users = User.find(:all, :order => "id desc", :limit => 3)
	end
	
end
