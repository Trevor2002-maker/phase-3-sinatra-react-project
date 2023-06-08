puts "🌱 Seeding data..."

require 'faker'

# Create properties data
20.times do
  Property.create(
    location: Faker::Address.city, 
    bedroom_number: Faker::Number.between(from: 1, to: 6),
    house_type: Faker::Lorem.word,
    price: Faker::Number.between(from: 10000, to: 50000000)
  )
end

# Create users data
10.times do
  User.create(
    user_email: Faker::Internet.email,
    user_name: Faker::Name.name,
    password: Faker::Internet.password,
    property_id: Faker::Number.between(from: 1, to: 20)
  )
end

puts "✅ Done seeding!"
