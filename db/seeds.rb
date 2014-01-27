# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

me = User.create(name: "Alex J", email: "ajiang@andover.edu")
products = %w[pencils paper scoresheets pieces boards clocks]
prices = %w[1.99 3.50 10.00 25.00 19.99 49.99]
products.each_with_index do |product, index|
  Product.create(description: product, price:prices[index])
end
me.orders.create # me.orders.create(status:'ordered')
me.orders.first.products << Product.first
me.orders.first.products << Product.last