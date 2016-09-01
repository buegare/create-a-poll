# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

guest = User.new(name: 'Guest', lastname: 'User', email: 'guest@example.com', password: '123456' )
if guest.save
	puts "Guest user created successfuly!"
else
	puts "Guest user could not be created"
	puts guest.errors.full_messages
end