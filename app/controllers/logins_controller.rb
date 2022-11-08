class LoginsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user.authenticate(params[:password])
      session[:current_user_id] = user.id
      redirect_to posts_path
    else
      flash[:notice] = "Incorrect login."
      render "new"
    end
  end

  def destroy
    reset_session
    redirect_to login_path
  end

end
