class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:user][:email])
    puts @user
    puts @user.authenticate(params[:user][:password])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to "/events"
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
