# This module will allow querying of TwitterCounter API
# http://twittercounter.com/pages/api

module TwitCount

  # twitter_id should be an integer that is the Twitter ID (not username!)
  # of the account that you would like information for
  def self.query(twitter_id)

    base_uri = 'http://api.twittercounter.com/'
    api_key = '?apikey=' + ENV['TWITTER_COUNTER_API']
    id_number = '&twitter_id=' + twitter_id.to_s

    response = HTTParty.get(base_uri + api_key + id_number)

    # creates database entry with the number of followers
    new_entry = Query.create(:followers => response['followers_current'])

    # this method currently returns just the current number of followers
    # return response['followers_current']

  end

end
