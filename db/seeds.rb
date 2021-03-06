# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |n|
  contact = Contact.new({first_name: Faker::Name.name.split[0], last_name: Faker::Name.name.split[1], email: Faker::Internet.email, phone_number: Faker::PhoneNumber.phone_number, address: "#{Faker::Address.street_address}, #{Faker::Address.city}", user_id: 2})
  contact.latitude = Faker::Address.latitude
  contact.longitude = Faker::Address.longitude
  contact.save
end