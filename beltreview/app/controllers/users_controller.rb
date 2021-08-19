class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to "/sessions/new"
    else
      flash[:notice] = @user.errors.full_messages
      redirect_to :back
    end
  end

  def edit
  end

  def show
  end

  private
    def user_params
      params.require(:user).permit(:f_name, :l_name, :email, :city, :state, :password, :password_confirmation)
    end

end
