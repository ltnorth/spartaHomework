# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

director1 = Director.create(name: "Quentin Tarantino", dob: "1963-3-27", rating: 8.9)
director2 = Director.create(name: "Stephen Spielberg", dob: "1954-8-16", rating: 8.5)
director3 = Director.create(name: "James Cameron", dob: "1946-12-18", rating: 7.8)

movie1 = Movie.create(title: "Kill Bill vol.1", summary: "A bride hunts down her former assassination squad.", release: "2003-9-17")
movie2 = Movie.create(title: "Kill Bill vol.2", summary: "She's still hunting.", release: "2004-4-20")
movie3 = Movie.create(title: "Jurassic Park", summary: "Some archaeologists go to an island inhabitted by dinosaurs cloned as amusement park attractions.", release: "1993-7-16")
movie4 = Movie.create(title: "The Abyss", summary: "People stuck on the ocean floor decide to chase something down a trench and find some aliens or somethign I didn't get it.", release: "1989-8-9")
movie5 = Movie.create(title: "Avatar", summary: "Just google it.", release: "2009-12-17")

director1.movies.push(movie1)
director1.movies.push(movie2)

director2.movies.push(movie3)

director3.movies.push(movie4)
director3.movies.push(movie5)

director1.save
director2.save
director3.save