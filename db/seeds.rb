# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.destroy_all
City.destroy_all
Gossipp.destroy_all
Post.destroy_all
Tag.destroy_all
PrivateMessage.destroy_all

cities_list = []
users_list = []
gossipps_list = []
tags_list = []

10.times do

	city = City.create(name: Faker::Nation.capital_city, zip_code: Faker::Address.zip_code)
	cities_list << city

	user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence, age: Faker::Number.between(from: 18, to: 99), city: cities_list.sample)
	users_list << user

	gossipp = Gossipp.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph, user: users_list.sample)
    gossipps_list << gossipp

	tag = Tag.create(title: Faker::Lorem.word)
	tags_list << tag

	post = Post.create(gossipp: gossipps_list.sample, tag: tags_list.sample)

	private_message = PrivateMessage.create(content: Faker::Lorem.paragraph, sender: users_list.sample, recipient: users_list.sample)
end

puts "It is okay"
