class UsersController < ApplicationController
	layout "allbibs_layaout"

  def index
		@users = User.all
		
  end

  def show 
    @user = User.find(params[:id])
  end

  

end
