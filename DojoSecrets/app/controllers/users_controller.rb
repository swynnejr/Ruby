class UsersController < ApplicationController
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
  end

  def edit
  
  end

  def update

  end
  private
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
end
