class SiteController < ApplicationController
  
  def index
    @winner  = Challenge.winner
  end

end
