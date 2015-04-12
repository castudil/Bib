# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


	userAdmin = User.create([{ name: 'Cesar' , approved: true , last_name: 'Astudillo', biography: 'bio' , graduation_year: 1970 , 
		email: 'email1@email.com' , password: 'password', superUser: 1 }])

	user0 = User.create([{ name: 'Mario' , approved: true , last_name: 'Sanhueza', biography: '' , graduation_year: 1970 , 
		email: 'email2@email.com' , password: 'password', superUser: 2 }])

	user1 = User.create([{ name: 'Jimmy' , approved: true , last_name: 'Gutierrez', biography: 'bio' , graduation_year: 1970 , 
		email: 'email3@email.com' , password: 'password', superUser: 2 }])

	user2 = User.create([{ name: 'Eduardo' , approved: true , last_name: 'Zapata', biography: 'bio' , graduation_year: 1970 , 
		email: 'email4@email.com' , password: 'password', superUser: 2 }])