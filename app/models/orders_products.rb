# == Schema Information
#
# Table name: orders_products
#
#  id         :integer          not null, primary key
#  order_id   :integer          not null
#  product_id :integer          not null
#

class OrdersProducts < ActiveRecord::Base
  # attr_accessible :title, :body
end
