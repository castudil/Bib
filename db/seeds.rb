# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


	user = User.create([{ name: 'Chicago' , approved: true , last_name: 'gusta', biography: 'bio' , graduation_year: 1970 , 
		avatar: nil , email: 'email1@email.com' , password: 'password', superUser: 1 }])

		user = User.create([{ name: 'Chicago' , approved: false , last_name: 'gusta', biography: 'bio' , graduation_year: 1970 , 
		avatar: nil , email: 'email2@email.com' , password: 'password', superUser: 2 }])