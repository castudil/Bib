# config/initializers/devise_permitted_parameters.rb

module DevisePermittedParameters
  extend ActiveSupport::Concern

  included do
    before_filter :configure_permitted_parameters
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :avatar << :name << :career  << :email << :password << :password_confirmation << :last_name << :biography << :graduation_year << :superUser
    devise_parameter_sanitizer.for(:account_update) << :avatar << :name << :career << :email << :password << :password_confirmation << :last_name << :biography << :graduation_year << :superUser
  end

end

DeviseController.send :include, DevisePermittedParameters