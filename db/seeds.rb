# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Review.destroy_all

2.times do |index1|
  myProduct = Product.create!(
    name: Faker::Food.ingredient,
    cost: Faker::Number.between(1, 100),
    origin: "USA"
  )
  4.times do |index2|
    myProduct.reviews.create!(
    author: Faker::Book.author,
    content_body: Faker::Lorem.characters(50..250),
    rating: Faker::Number.between(1, 5),
  )
  end
end

1.times do |index1|
  myProduct = Product.create!(
    name: Faker::Food.ingredient,
    cost: Faker::Number.between(1, 100),
    origin: "USA"
  )
  7.times do |index2|
    myProduct.reviews.create!(
    author: Faker::Book.author,
    content_body: Faker::Lorem.characters(50..250),
    rating: Faker::Number.between(1, 5),
  )
  end
end

47.times do |index1|
  myProduct = Product.create!(
    name: Faker::Food.ingredient,
    cost: Faker::Number.between(1, 100),
    origin: Faker::Address.country
  )
  5.times do |index2|
    myProduct.reviews.create!(
    author: Faker::Book.author,
    content_body: Faker::Lorem.characters(50..250),
    rating: Faker::Number.between(1, 5),
  )
  end
end

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
