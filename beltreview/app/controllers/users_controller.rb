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
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    user.save
    puts user.errors.full_messages if user.errors
    redirect_to "/events"
    # fail   <<<< Checks params being passed through

  end

  def show
    @user = User.find(params[:id])
  end

  private
    def user_params
      params.require(:user).permit(:f_name, :l_name, :email, :city, :state, :password, :password_confirmation)
    end

end
