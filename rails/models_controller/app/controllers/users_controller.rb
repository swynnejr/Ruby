class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def new

  end

  def one_user
  end

  def edit
  end

  def create
    puts params[:user]
    User.create(name: params[:user][:name])
    redirect_to "/users"
  end

  def all_users
  end
end
