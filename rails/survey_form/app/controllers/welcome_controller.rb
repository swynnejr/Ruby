class WelcomeController < ApplicationController
  @@counter = 0
  def index
  end

  def create
    @new_ninja = Ninja.create(ninja_params)
    redirect_to '/results'
  end
  
  def results
    @@counter += 1
    flash[:notice] = "You are Ninja #{@@counter}"
    @show_ninja = Ninja.last
  end

  private
    def ninja_params
      params.require(:ninja).permit(:name, :location, :language, :comment)
    end
end
