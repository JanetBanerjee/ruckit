class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:new) { |u| u.permit(:first_name, :second_name, :username, :email, :password, :user_photo, :user_photo_cache, :remove_user_photo)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :second_name, :username, :email, :password, :user_photo, :user_photo_cache, :remove_user_photo)}
  end
end
