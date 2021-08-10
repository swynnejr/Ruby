class DojoController < ApplicationController
  def index
    @dojos = Dojo.all
    @number = Dojo.count
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end
