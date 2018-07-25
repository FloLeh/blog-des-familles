require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 10.times do
#   fake = Faker::Name.first_name
#   user = User.create(first_name: fake, last_name: Faker::Name.last_name, email: Faker::Internet.free_email(fake))
# end

10.times do
  article = Article.create(title: Faker::OnePiece.akuma_no_mi, content: Faker::TheFreshPrinceOfBelAir.quote, user_id: rand(1..10)*3, category_id: rand(1..10)*2)
end

# 10.times do
#   category = Category.create(name: Faker::Food.fruits,article_id: rand(1..10))
# end

10.times do
  commentary = Commentary.create(content: "hey", user_id: rand(1..10)*3, article_id: rand(1..10))
end
