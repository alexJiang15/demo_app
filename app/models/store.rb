# == Schema Information
#
# Table name: stores
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  store_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Store < ActiveRecord::Base
  attr_accessible :name, :store_id
end
