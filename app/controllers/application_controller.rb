class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :second_name, :username, :email, :password, :avatar, :avatar_cache, :remove_avatar)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :second_name, :username, :email, :password, :password_confirmation, :current_password, :avatar, :avatar_cache, :remove_avatar)}
  end
end
