class WelcomeController < ApplicationController

  def index

    # @number = TwitCount.query(608161934)
    display_array = Query.last(10)
    last_ten_count = []
    last_ten_time = []

    display_array.each do |x|
      last_ten_count << x.followers
      last_ten_time << x.created_at
    end

    render :json => { last_ten_count: last_ten_count,
                      last_ten_time: last_ten_time }

  end


end
