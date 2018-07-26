require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  fake = Faker::Name.first_name
  user = User.create(first_name: fake, last_name: Faker::Name.last_name, email: Faker::Internet.free_email(fake))
end

10.times{Article.create(title: Faker::OnePiece.akuma_no_mi, content: Faker::TheFreshPrinceOfBelAir.quote, user_id: rand(1..10)+30, category_id: rand(1..10)+20)}


10.times do
  category = Category.create(name: Faker::Food.fruits,article_id: rand(1..10))
end

10.times{Commentary.create(content: Faker::HarryPotter.quote, user_id: rand(1..10)+30, article_id: rand(0..9)+10)}

10.times{Like.create(user_id: rand(1..10)+30, article_id: rand(0..9)+10)}
