# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Director.destroy_all
Genre.destroy_all
Movie.destroy_all

10.times do 
    Director.create(name: Faker::FunnyName.name, age: Faker::Number.between(from: 1, to: 10))
end 

10.times do
    Genre.create(name: Faker::Verb.base)
end 

10.times do
    Movie.create(title: Faker::Science.element, year: Faker::Number.number(digits: 4), director_id:Director.all.sample.id, genre_id:Genre.all.sample.id)
end 