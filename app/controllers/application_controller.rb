class ApplicationController < ActionController::Base

  private

  def current_user
    @_current_user ||= session[:current_user_id] &&
      User.find(session[:current_user_id])
  end

  def require_login
    unless !!session[:current_user_id]
      flash[:notice] = "You must login"
      redirect_to login_path
    end
  end
end
