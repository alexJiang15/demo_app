# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  description :string(255)
#  price       :decimal(8, 2)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ActiveRecord::Base
  attr_accessible :description, :price
  
  has_and_belongs_to_many :orders
  has_many :orders_products
  
  scope :costs_less_than, ->(p) { where('price < ?', p).uniq.order('price ASC') }
  # old way:
  # scope :costs_less_than, lambda { |p| where('price < ?', p).order('price ASC') }
  scope :has_at_least_one_order, -> { joins(:orders).uniq }
  scope :has_pending_orders, -> { joins(:orders).where('orders.status=?','ordered').uniq }
  
  scope :average_price, -> { average(:price) }
end
