class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  
  def configure_permitted_parameters
    devise_paramter_santizer.permit(:sign_up, keys: [:fullname])
    devise_paramter_santizer.permit(:account_update, keys: [:fullname])
  end
end
