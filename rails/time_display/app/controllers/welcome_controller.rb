class WelcomeController < ApplicationController
  def index
    @time = Time.now
    @local_time = @time.localtime
  end
end
