# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  status     :string(255)      default("ordered")
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ActiveRecord::Base
  attr_accessible :status
  
  belongs_to :user
  has_and_belongs_to_many :products
  has_many :order_products
  
  validates :status, :inclusion => { in: %w[ordered shipped paid] }
  
  scope :ordered, where(status: 'ordered')
  
  def total_cost
    self.products.sum(:price)
  end
  
end
