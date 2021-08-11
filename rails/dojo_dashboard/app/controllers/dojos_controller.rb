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

  # I tried with and without @ symbol
  def update
    dojo = Dojo.find(params[:id])
    dojo.branch = params[:branch]
    dojo.street = params[:street]
    dojo.city = params[:city]
    dojo.state = params[:state]
    dojo.save
    redirect_to "/dojos"
    # fail   <<<< Checks params being passed through
  end

  def destroy
    dojo = Dojo.find(params[:id])
    dojo.destroy
    redirect_to "/dojos"
  end
  private
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
end
