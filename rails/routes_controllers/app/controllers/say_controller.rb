class SayController < ApplicationController
  def hello_dojo
    # puts "Hello CodingDojo!"
  end

  def hello
    # puts "Saying Hello!"
  end

  def hello_joe
    # puts "Saying Hello Joe!"
  end

  def hello_michael
    redirect_to "/say/hello/joe"
  end
end
