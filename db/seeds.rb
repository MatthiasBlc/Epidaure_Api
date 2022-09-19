# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
TimeSlot.destroy_all
Room.destroy_all
Patient.destroy_all
User.destroy_all
Practice.destroy_all

Practice.create!(
  name: 'Practice 1'
)

mail = ['collaborator@yopmail.com', 'holder@yopmail.com', 'administrator@yopmail.com']

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

TimeSlot.create!(
  user: User.first,
  room: Room.first,
  text: 'Event 1',
  start: '2022-09-16T10:30:00',
  end: '2022-09-16T13:00:00',
  barColor: '#fcb711',
  resource: 'M'
)

TimeSlot.create!(
  user: User.first,
  room: Room.first,
  text: "Event 2",
  start: "2022-09-16T09:30:00",
  end: "2022-09-16T11:30:00",
  barColor: "#f37021",
  resource: "T"
)

TimeSlot.create!(
  user: User.first,
  room: Room.first,
  text: "Event 3",
  start: "2022-09-16T12:00:00",
  end: "2022-09-16T15:00:00",
  barColor: "#cc004c",
  resource: "T"
)

TimeSlot.create!(
  user: User.first,
  room: Room.first,
  text: "Event 4",
  start: "2022-09-16T11:30:00",
  end: "2022-09-16T14:30:00",
  barColor: "#6460aa",
  resource: "W"
)
