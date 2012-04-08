class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
    def user_selected
      unless session[:user_id]
        redirect_to root_path, alert: 'Please select a user first'
      end
    end

    def current_user
      User.find(session[:user_id]) if session[:user_id]
    end
end
