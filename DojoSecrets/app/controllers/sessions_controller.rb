class SessionsController < ApplicationController
  
  skip_before_action :require_login, except: [:destroy]
  before_action :require_authorization, except: [:new, :create]
  
  def new
    # render login page
  end

  def create
    # @user = User.find_by(email: params[:email])
    # ~~ OR ~~
    @user = User.find_by_email(params[:email]).try(:authenticate, params[:password])
    if @user
      session[:user_id] = @user.id
      redirect_to "/users/#{@user.id}"
    else
      flash[:errors] = ["Invalid Combination"]
      # redirect_to :back
      # ~~ OR ~~
      redirect_to "/sessions/new"
    end
    # ~~ OR ~~
    # @user = User.find_by_email(params[:email])
    # if @user && @user.authenticate(params[:password])
    #   session[:user_id] = @user.id
    #   redirect_to "/users/#{@user.id}"
    # else
    #   flash[:errors] = ["Invalid Combination"]
    #   redirect_to "/sessions/new"
    # end
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

