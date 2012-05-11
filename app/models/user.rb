class User < ActiveRecord::Base
  attr_accessible :username, :email

  has_many :user_challenges
  has_many :challenges, :through => :user_challenges

  validates_presence_of :username
  validates_uniqueness_of :email

  #not using default find_or_create_by since it requires
  #both name and email to match.  Code below accomdates
  #situations where names change.
  def self.find_or_create(name, email)
    user = User.find_by_email(email)
    unless user
      user = User.create(:username => name, :email => email)
    end
    user
  end
end
