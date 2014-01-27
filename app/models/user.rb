# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  bio        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  color      :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :bio, :email, :name, :color
  
  has_many :microposts
  has_many :orders
  has_many :products, :through => :orders
end
