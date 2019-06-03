class ApplicationController < ActionController::Base
	def after_sign_in_path_for(resource)
  current_user
	end

	before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys:[:name, :lastname, :phone, :address, :profile])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :lastname, :phone, :address, :profile])
    end
  	private
	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	helper_method :current_user
end
