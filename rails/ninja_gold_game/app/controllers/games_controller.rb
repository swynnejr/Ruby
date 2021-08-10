class GamesController < ApplicationController
  # Making this "session[:counter]" is probably better than "@@counter"
  @@counter = 0
  
  def index
    flash[:notice] = "You have #{@@counter} gold!"
  end

  def goldmine
    # IF FORM SUBMITS FARM
    # if
      @@counter += rand(10..20)
    # IF FORM SUBMITS CAVE
    # elsif
      @@counter += rand(5..10)
    # IF FORM SUBMITS HOUSE
    # elsif
      @@counter += rand(2..5)
    # IF FORM SUBMITS CASINO
    # else
      gamble = rand(-50..50)
      @@counter += gamble
    # end
    redirect_to ''
  end
  # IF I WANT TO MAKE A NEW CONTROLLER TO RESET SESSION
  # DO I NEED TO: rails g controller Games restart
end
