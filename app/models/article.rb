class Article < ActiveRecord::Base
  attr_accessible :title, :link
  validates_uniqueness_of :title, :link
  validates_presence_of :title, :link
end
