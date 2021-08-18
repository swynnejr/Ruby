class SessionsController < ApplicationController
  
  skip_before_action :require_login, except: [:destroy]
  
  def new
    # render login page
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to "/users/#{@user.id}"
    else 
      flash[:errors] = ["Invalid Combination"]
      redirect_to "/sessions/new"
    end
  end

  def destroy
    # Log User out
    # set session[:user_id] to null
    # redirect to login page
    #  ~~ OR ~~
    # session.clear
    # ~~ OR ~~
    reset_session
    redirect_to "/sessions/new"
  end

end

