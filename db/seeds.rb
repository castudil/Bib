# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


	userAdmin = User.create([{ name: 'Cesar' , approved: true , last_name: 'Astudillo', biography: 'bio' , graduation_year: 1970 , 
		email: 'email1@email.com' , career: 'teacher', password: 'password', superUser: 1 , activo: false}])

	user0 = User.create([{ name: 'Mario' , approved: true , last_name: 'Sanhueza', biography: 'I was born in rancagua and then move to curico to study ' ,
	   graduation_year: 1970 , 
		email: 'email2@email.com' , career: 'Ing en Computacion', password: 'password', superUser: 2 , activo: true}])

	user1 = User.create([{ name: 'Jimmy' , approved: true , last_name: 'Gutierrez', biography: 'I was born in 1987 now i made a magister of industrial ingenier' , graduation_year: 1970 , 
		email: 'email3@email.com' , career: 'Ing Industial',  password: 'password', superUser: 2 , activo: true}])

	user2 = User.create([{ name: 'Eduardo' , approved: true , last_name: 'Zapata', biography: 'I was born in San Fernando and then move to curico to study' , graduation_year: 1970 , 
		email: 'email4@email.com' ,  career: 'Ing en Computacion', password: 'password', superUser: 2 , activo: true}])

	user3 = User.create([{ name: 'Nicolas' , approved: true , last_name: 'Muñoz', biography: 'I was born in San Fernando and then move to curico to study' , graduation_year: 1970 , 
		email: 'email5@email.com' ,  career: 'Ing en Computacion', password: 'password', superUser: 2 , activo: true}])

	user4 = User.create([{ name: 'Claudio' , approved: true , last_name: 'Valenzuela', biography: 'I was born in San Fernando and then move to curico to study' , graduation_year: 1970 , 
		email: 'email6@email.com' ,  career: 'Ing en Computacion', password: 'password', superUser: 2 , activo: true}])

	user5 = User.create([{ name: 'Tamara' , approved: true , last_name: 'Valdivia', biography: 'I was born in San Fernando and then move to curico to study' , graduation_year: 1970 , 
		email: 'email7@email.com' ,  career: 'Ing en Computacion', password: 'password', superUser: 2 , activo: true}])

	user6 = User.create([{ name: 'Nicole' , approved: true , last_name: 'Gonzalez', biography: 'I was born in San Fernando and then move to curico to study' , graduation_year: 1970 , 
		email: 'email8@email.com' ,  career: 'Ing en Computacion', password: 'password', superUser: 2 , activo: true}])

	user7 = User.create([{ name: 'John' , approved: true , last_name: 'Zapata', biography: 'I was born in San Fernando and then move to curico to study' , graduation_year: 1970 , 
		email: 'email9@email.com' ,  career: 'Ing en Computacion', password: 'password', superUser: 2 , activo: true}])

	user8 = User.create([{ name: 'Cesar' , approved: true , last_name: 'Zapata', biography: 'I was born in San Fernando and then move to curico to study' , graduation_year: 1970 , 
		email: 'email10@email.com' ,  career: 'Ing en Computacion', password: 'password', superUser: 2 , activo: true}])

	user9 = User.create([{ name: 'Camilo' , approved: true , last_name: 'Zapata', biography: 'I was born in San Fernando and then move to curico to study' , graduation_year: 1970 , 
	email: 'email11@email.com' ,  career: 'Ing en Computacion', password: 'password', superUser: 2 , activo: false}])

	user10 = User.create([{ name: 'Daniel' , approved: true , last_name: 'Zapata', biography: 'I was born in San Fernando and then move to curico to study' , graduation_year: 1970 , 
	email: 'email12@email.com' ,  career: 'Ing en Computacion', password: 'password', superUser: 2 , activo: false}])

	user11 = User.create([{ name: 'Nicolas' , approved: true , last_name: 'Zapata', biography: 'I was born in San Fernando and then move to curico to study' , graduation_year: 1970 , 
	email: 'email13@email.com' ,  career: 'Ing en Computacion', password: 'password', superUser: 2 , activo: false}])

	user12 = User.create([{ name: 'Sebastian' , approved: true , last_name: 'Zapata', biography: 'I was born in San Fernando and then move to curico to study' , graduation_year: 1970 , 
	email: 'email14@email.com' ,  career: 'Ing en Computacion', password: 'password', superUser: 2 , activo: false}])

	user13 = User.create([{ name: 'Juan' , approved: true , last_name: 'Zapata', biography: 'I was born in San Fernando and then move to curico to study' , graduation_year: 1970 , 
	email: 'email15@email.com' ,  career: 'Ing en Computacion', password: 'password', superUser: 2 , activo: false}])

	user14 = User.create([{ name: 'Carlos' , approved: true , last_name: 'Zapata', biography: 'I was born in San Fernando and then move to curico to study' , graduation_year: 1970 , 
	email: 'email16@email.com' ,  career: 'Ing en Computacion', password: 'password', superUser: 2 , activo: false}])

	user15 = User.create([{ name: 'Francisco' , approved: true , last_name: 'Zapata', biography: 'I was born in San Fernando and then move to curico to study' , graduation_year: 1970 , 
	email: 'email17@email.com' ,  career: 'Ing en Computacion', password: 'password', superUser: 2 , activo: false}])

	user16 = User.create([{ name: 'Felipe' , approved: true , last_name: 'Zapata', biography: 'I was born in San Fernando and then move to curico to study' , graduation_year: 1970 , 
	email: 'email18@email.com' ,  career: 'Ing en Computacion', password: 'password', superUser: 2 , activo: false}])

	user17 = User.create([{ name: 'Bryan' , approved: true , last_name: 'Zapata', biography: 'I was born in San Fernando and then move to curico to study' , graduation_year: 1970 , 
	email: 'email19@email.com' ,  career: 'Ing en Computacion', password: 'password', superUser: 2 , activo: false}])

	user18 = User.create([{ name: 'Ben' , approved: true , last_name: 'Zapata', biography: 'I was born in San Fernando and then move to curico to study' , graduation_year: 1970 , 
	email: 'email20@email.com' ,  career: 'Ing en Computacion', password: 'password', superUser: 2 , activo: false}])

	user19 = User.create([{ name: 'Miguel' , approved: true , last_name: 'Zapata', biography: 'I was born in San Fernando and then move to curico to study' , graduation_year: 1970 , 
	email: 'email10@email.com' ,  career: 'Ing en Computacion', password: 'password', superUser: 2 , activo: false}])

	AdminUser.create!(:email => 'cesar.astudillo@gmail.com', :password => 'password', :password_confirmation => 'password')