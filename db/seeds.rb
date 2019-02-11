# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do |i|
	User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Movie.quote, email: "111222333444@yopmail.com")
end

20.times do |i|
	Event.create(start_date: Faker::Date.between(100.days.ago, Date.today), duration: rand(1..120), title: "mon-super-event", description: Faker::Hipster.paragraphs.join("\n"), price: rand(1..1000), location: Faker::GameOfThrones.city, admin_id: rand(1..10))
end

20.times do |i|
	Attendance.create(stripe_customer_id: Faker::IDNumber.valid, event_id: rand(1..10), participant_id: rand(1..10))
end

