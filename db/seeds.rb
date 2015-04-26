# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


	userAdmin = User.create([{ name: 'Cesar' , approved: true , last_name: 'Astudillo', biography: 'bio' , graduation_year: 1970 , 
		email: 'email1@email.com' , career: 'teacher', password: 'password', superUser: 1 }])

	user0 = User.create([{ name: 'Mario' , approved: true , last_name: 'Sanhueza', biography: 'I was born in rancagua and then move to curico to study' ,
	   graduation_year: 1970 , 
		email: 'email2@email.com' , career: 'Ing en Computacion', password: 'password', superUser: 2 }])

	user1 = User.create([{ name: 'Jimmy' , approved: true , last_name: 'Gutierrez', biography: 'I was born in 1987 now i made a magister of industrial ingenier' , graduation_year: 1970 , 
		email: 'email3@email.com' , career: 'Ing Industial',  password: 'password', superUser: 2 }])

	user2 = User.create([{ name: 'Eduardo' , approved: true , last_name: 'Zapata', biography: 'I was born in San Fernando and then move to curico to study' , graduation_year: 1970 , 
		email: 'email4@email.com' ,  career: 'Ing en Computacion', password: 'password', superUser: 2 }])