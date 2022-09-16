# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Room.destroy_all
Patient.destroy_all
User.destroy_all
Practice.destroy_all

Practice.create!(
  name: 'Practice 1'
)

mail = ['collaborator@test.fr', 'holder@test.fr', 'administrator@test.fr']

3.times do |i|
  User.create!(
    email: mail[i],
    password: '123456',
    password_confirmation: '123456',
    practice: Practice.first,
    status: i
  )
end

2.times do |i|
  Room.create!(
    name: "bureau #{i}",
    practice: Practice.first
  )
end
