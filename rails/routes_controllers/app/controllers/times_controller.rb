class TimesController < ApplicationController
  def counter
    if session[:counter]
      session[:counter] += 1
    else
      session[:counter] = 1
    end
  end

  def restart
    session[:counter] = 0
    redirect_to "/times"
  end
end
