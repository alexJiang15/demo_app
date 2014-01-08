class User < ActiveRecord::Base
  attr_accessible :bio, :email, :name, :color
  has_many :microposts
end
