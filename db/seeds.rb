# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.create ([
    {post_id: 5, user_id: 1, content: Faker::Lorem.sentences(number: 1), author: 'cutiewho' },
    {post_id: 5, user_id: 3, content: Faker::Lorem.sentences(number: 2), author: 'greenmachine' },
    {post_id: 5, user_id: 1, content: Faker::Lorem.sentences(number: 1), author: 'cutiewho' },
    {post_id: 1, user_id: 2, content: Faker::Lorem.sentences(number: 2), author: 'peepingTom' },
    {post_id: 1, user_id: 3, content: Faker::Lorem.sentences(number: 1), author: 'greenmachine' },
    {post_id: 3, user_id: 2, content: Faker::Lorem.sentences(number: 3), author: 'peepingTom' }
])

puts 'Seeded Database'