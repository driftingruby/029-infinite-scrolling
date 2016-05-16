# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
2500.times do |i|
  puts "Creating product ##{i}"
  product = Product.new
  product.name = Faker::Commerce.product_name
  product.price = Faker::Commerce.price
  product.department = Faker::Commerce.department
  
  description = []
  Faker::Lorem.paragraphs(100).each_slice(10) do |slice|
    description << "<p>#{slice.join}</p>"
  end
  product.description = description.join
  product.save
end
