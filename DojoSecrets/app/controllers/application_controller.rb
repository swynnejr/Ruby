class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :require_login

  private

  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    else
      nil
    end
  end
  helper_method :current_user

  def require_login
    unless current_user
      flash[:error] = "You must be logged in to access this section"
      redirect_to '/sessions/new'
    end
    # WHAT's UP WITH THIS???
    # unless logged_in?
    #   flash[:error] = "You must be logged in to access this section"
    #   redirect_to "/sessions/new" # halts request cycle
    # end
  end

  def require_authorization
    # F Strings require " " NOT ' '
    redirect_to "/users/#{current_user.id}" unless current_user.id == params[:id].to_i
  end

end
