require './models/user'
require './models/product'
require 'faker'

# seeds.rb is a way of automating the population of the database with testing data.

(0..10).each do |i|
    User.create(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      address: Faker::Address.street_address
    )
end

(0..10).each do |i|
    Product.create(
      name: Faker::Beer.name,
      price: Faker::Commerce.price,
      photo: Faker::Placeholdit.image("50x50", 'jpg'),
      brand: Faker::Beer.hop,
      category: Faker::Beer.style,
      quantity: Faker::Number.between(1, 10)
    )
end
