class UsersController < ApplicationController
	layout "allbibs_layaout"

  def index
	@users = User.all.where.not(superUser: 1)
		
  end

  def show 
    @user = User.find(params[:id])
  end

  

end
