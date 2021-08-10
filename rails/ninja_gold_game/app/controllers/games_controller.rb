class GamesController < ApplicationController
  # Making this "session[:counter]" is probably better than "@@counter"
  # session[:counter] = 0

  def index
    flash[:notice] = "You have #{session[:counter]} gold!"
    session[:counter] = 0 unless session[:counter]
  end

  def goldmine
    if params[:destination] == "farm"
      gold = rand(10..20)
      session[:counter] += gold
    # IF FORM SUBMITS CAVE
    elsif params[:destination] == "cave"
      gold = rand(5..10)
      session[:counter] += gold
    # IF FORM SUBMITS HOUSE
    elsif params[:destination] == "house"
      gold = rand(2..5)
      session[:counter] += gold
    # IF FORM SUBMITS CASINO
    else params[:destination] == "casino"
      gold = rand(-50..50)
      session[:counter] += gold
    # end
    redirect_to ''
  end

  def restart
    session[:counter] = 0
    redirect_to ''
  end

end
