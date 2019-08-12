# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: 'sarawall1187', email: 'sarawall1187@gmail.com', password: 'password')
Diary.create(todays_entry: "Today was awesome!", tomorrows_goal: "I will excercise!", food_log: "Apples, fried chicken", user_id: 1)