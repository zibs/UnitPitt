# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do |contrib|
	name = Faker::Name.name
	bio = Faker::Lorem.sentence(5)
	Contributor.create(name: name, bio: bio)
end

5.times do 
Contributor.all.each do |contrib|
	
	title     = Faker::Book.title
    author    = Faker::Book.author
	publisher = Faker::Book.publisher 

	contrib.books.create(title: title, author: author, publisher: publisher)

	end
end




