class User < ActiveRecord::Base
  attr_accessible :name, :email

  has_many :user_challenges
  has_many :challenges, :through => :user_challenges

  validates_presence_of :name, :email
  validates_uniqueness_of :email

  def self.find_or_create(name, email)
    user = User.find_by_email(email)
    if user.present?
      user.challenge = challenge
      user.save
    else
      User.create(:name => name, :email => email)
    end
  end
end
