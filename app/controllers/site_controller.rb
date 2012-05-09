class SiteController < ApplicationController
  
  def index
    @winning_time  = Challenge.winning_time
    @winning_rider = Challenge.winner_names
  end

end
