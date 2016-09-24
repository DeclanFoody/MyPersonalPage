class MiscellaneousController < ApplicationController
require('pry')
helper_method :svg

def index
    access_token = ""
    client = Instagram.client(access_token: access_token)
    @results = []
    media = client.user_recent_media

      media.each do |media, likes|

        if media.likes["count"] >= 20
          @results << media
        end
      end
      return @results
  end
end