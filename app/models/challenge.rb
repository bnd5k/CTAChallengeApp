class Challenge < ActiveRecord::Base
  attr_accessible :date, :duration, :user

  has_many :user_challenges
  has_many :users, :through  => :user_challenges
  validates_presence_of :date, :duration

  def self.winner
    Challenge.find(:first, :order => "duration desc")
  end

end
