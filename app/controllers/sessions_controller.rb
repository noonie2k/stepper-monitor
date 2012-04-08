class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find(params[:user_id])

    if user
      session[:user_id] = user.id
      redirect_to root_path, notice: "Welcome #{user.name}"
    else
      redirect_to root_path, alert: 'Unknown user selected'
    end
  end

  def destroy
    session.destroy(:user_id)
  end
end
