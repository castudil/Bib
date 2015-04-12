class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def after_sign_in_path_for(resource)
  	allbibs_path
  end

  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:name, :avatar, :email, :password, :password_confirmation, :last_name, :biography , :graduation_year, :superUser  )
    end

    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:name, :avatar, :password, :password_confirmation, :current_password , :last_name, :biography , :graduation_year, :superUser  )
    end
  end


end
