class GamesController < ApplicationController
  # Making this "session[:counter]" is probably better than "@@counter"
  # session[:counter] = 0

  def index
    flash[:notice] = "You have #{session[:counter]} gold!"
    session[:counter] = 0 unless session[:counter]
  end

  def goldmine
    # IF FORM SUBMITS FARM
    # if
      session[:counter] += rand(10..20)
    # IF FORM SUBMITS CAVE
    # elsif
      session[:counter] += rand(5..10)
    # IF FORM SUBMITS HOUSE
    # elsif
      session[:counter] += rand(2..5)
    # IF FORM SUBMITS CASINO
    # else
      gamble = rand(-50..50)
      session[:counter] += gamble
    # end
    redirect_to ''
  end

  def restart
    session[:counter] = 0
    redirect_to ''
  end

end
