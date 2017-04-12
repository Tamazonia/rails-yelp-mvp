# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do
  restaurant = Restaurant.create!(
    name: Faker::Name.first_name,
    address: Faker::Address.city,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  review = Review.new(
    content: Faker::Lorem.sentence,
    rating: [0,1,2,3,4,5].sample
  )
  review.restaurant = restaurant
  review.save

end


