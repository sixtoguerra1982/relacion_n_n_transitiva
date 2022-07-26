# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |i|
    User.create!(email: Faker::Internet.email , password: 123456)
end

users = User.all

puts 'Creación de Post y Tags'
30.times do |i|
    Post.create!(user: users.sample, 
                content: Faker::Company.catch_phrase, 
                title: "Soy el titulo #{i + 1}"  )

    Tag.create!(name: Faker::Hacker.adjective)
end

tags = Tag.all
posts = Post.all

30.times do |i|
    PostTag.create!(tag: tags.sample , post: posts.sample)
end


