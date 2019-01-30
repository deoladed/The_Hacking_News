# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do
	User.create(name: Faker::Hobbit.character)
end

10.times do
		Lien.create(url: Faker::Internet.url('thehackingproject.com'), user: User.find(rand(1..5)))
	end

20.times do
	Comment.create(user: User.find(rand(1..5)), body: Faker::ChuckNorris.fact, lien: Lien.find(rand(1..10)))
end

20.times do
	UnderComment.create(user: User.find(rand(1..5)), body: Faker::ChuckNorris.fact, comment: Comment.find(rand(1..20)))
end

