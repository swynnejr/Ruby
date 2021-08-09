class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def create
    puts params[:user]
    User.create(name: params[:user][:name])
    redirect_to "/users"
  end

  def new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    # @user = User.find(params[:id]) <<< This would show the HTML show.html.erb
    render json: User.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def total
    @total = User.all.count
  end
end
