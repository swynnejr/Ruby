class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
    @number = Dojo.count
  end

  def create
    @dojo = Dojo.create(dojo_params)
    if @dojo.valid?
      redirect_to "/dojos"
    else
      flash[:notice] = @dojo.errors.full_messages
      redirect_to :back
    end
  end

  def new
  end

  def edit
    @dojo = Dojo.find(params[:id])
  end

  def show
    @dojo = Dojo.find(params[:id])
  end

  def update
  end

  def destroy
  end
  private
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
end
