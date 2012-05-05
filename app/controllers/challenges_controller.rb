class ChallengesController < ApplicationController

  def index
    @challenges = Challenge.all
  end

  def show
    @challenge = Challenge.find_by_id(params[:id])
  end

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new
    if @challenge.save(params[:challenge])
      flash[:success] = "New CTA Challenge has been added."
      redirect_to challenges_url
    else
      flash[:error] = "Please try again."
      render 'new'
    end
  end

  def edit
    @challenge = Challenge.find_by_id(params[:id])
  end

  def update
    @challenge = Challenge.find_by_id(params[:id])
    if @challenge.update_attributes(params[:challenge])
      flash[:success] = "Challenge updated"
      redirect_to challenge_url
    else
      flash[:error] = "Try that one more time"
      render 'edit'
    end
  end

  def destroy
    Challenge.find_by_id(params[:id]).destroy
    flash[:successs] = "Challenge has been deleted"
    redirect_to challenges_url
  end


end
