class UsersController < ApplicationController
  
  skip_before_action :require_login, except: [:destroy, :show, :edit, :update]
  # before_action :verify_user, except: [:new, :create, :index]
  before_action :require_authorization, except: [:create, :new, :index]
  def index
  
  end
  
  def new
  
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      # redirect_to dojo_user_path(dojo_id: @user.dojo_id, id: @user.id)
      redirect_to "/sessions/new"
    else
      flash[:notice] = @user.errors.full_messages
      redirect_to :back
    end


  end
  
  def show
    @user = User.find(params[:id])
    @secrets = @user.secrets
    @likes = @user.secrets_liked
  end

  def edit
    @user = User.find(params[:id])

  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    user.save
    puts user.errors.full_messages if user.errors
    if user.valid?
      # redirect_to dojo_user_path(dojo_id: @user.dojo_id, id: @user.id)
      redirect_to user_path(user)
    else
      flash[:notice] = user.errors.full_messages
      redirect_to edit_user_path(user)
    end

  end
  private
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end

    def verify_user
      if session[:user_id] != params[:id]
        redirect_to user_path(session[:user_id])
        # redirect_to user_path(User.find(session[:user_id]))
      end
    end
end
