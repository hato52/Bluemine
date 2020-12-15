# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  login_id: 'admin',
  password: 'password',
  password_confirmation: 'password',
  name: 'テストユーザ',
  book_id: nil,
  knowledge_id: nil,
  created_at: "2020-11-30 00:00:00", 
  updated_at: "2020-11-30 00:00:00"
)