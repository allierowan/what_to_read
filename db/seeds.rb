# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
genres = ["Mystery", "Romance", "Science Fiction", "Fantasy"]

20.times do
  author = Author.create!(full_name: FFaker::Name.name)
  rand(6).times do
    author.books.create!(title: FFaker::Book.title, genre: genres[rand(4)])
  end
end
