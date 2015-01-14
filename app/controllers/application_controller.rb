class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # from authentication-app-1
  include SessionsHelper

  def logged_in 
  	unless current_dog
  		redirect_to login_path
  	end
  end
  # end
  # def logged_in
  # 	session[:dog_id] != nil
  # end
end
