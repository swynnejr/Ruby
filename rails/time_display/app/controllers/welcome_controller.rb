class WelcomeController < ApplicationController
  def index
    @time = Time.now
    @local_time = @time.getlocal
  end
end
