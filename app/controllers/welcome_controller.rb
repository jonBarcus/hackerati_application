class WelcomeController < ApplicationController

  def index
    binding.pry
    @number = TwitCount.query(608161934)

  end


end
