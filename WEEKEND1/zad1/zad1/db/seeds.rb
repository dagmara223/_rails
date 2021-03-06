# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Ad.destroy_all

100.times do 
	Ad.create(name: Faker::Name.name,
		description: Faker::Lorem.word,
		price: Faker::Commerce.price,
		email: Faker::Internet.email,
		img_url: Faker::Company.logo)
end

puts "Ad created"