# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

TimeSlot.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('timeslots')
Room.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('rooms')
Patient.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('patients')
User.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')
Practice.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('practices')

resource = ["M","T","W","Th","F","S","Su"]

2.times do |i|
  Practice.create!(
  name:Faker::Address.street_name,
  adress:Faker::Address.full_address,
  email:Faker::Internet.email
)
end

practice = Practice.all
2.times do |i|
  User.create!(
    email: "holder#{i}@yopmail.com",
    password: '123456',
    password_confirmation: '123456',
    practice: practice[i],
    status: 1
  )
end

6.times do |i|
  User.create!(
    email: "collaborator#{i}@yopmail.com",
    password: '123456',
    password_confirmation: '123456',
    practice: Practice.all.sample,
    status: 0
  )
end


6.times do |i|
  Room.create!(
    name: "Salle #{i}",
    practice: Practice.all.sample
  )
end

selectedUser = User.all.sample
selectedRoom = Room.find_by(practice_id:selectedUser.practice.id)
TimeSlot.create!(
  user: selectedUser,
  room: selectedRoom,
  text: Faker::Name.name   ,
  start:"2022-09-16T09:30:00",
  end: '2022-09-16T13:00:00',
  barColor: Faker::Color.hex_color,
  resource: resource.sample
)

selectedUser = User.all.sample
selectedRoom = Room.find_by(practice_id:selectedUser.practice.id)
TimeSlot.create!(
  user: selectedUser,
  room: selectedRoom,
  text: Faker::Name.name   ,
  start:"2022-09-16T09:30:00",
  end: '2022-09-16T13:00:00',
  barColor: Faker::Color.hex_color,
  resource: resource.sample
)
selectedUser = User.all.sample
selectedRoom = Room.find_by(practice_id:selectedUser.practice.id)
TimeSlot.create!(
  user: selectedUser,
  room: selectedRoom,
  text: Faker::Name.name   ,
  start:"2022-09-16T09:30:00",
  end: '2022-09-16T13:00:00',
  barColor: Faker::Color.hex_color,
  resource: resource.sample
)
selectedUser = User.all.sample
selectedRoom = Room.find_by(practice_id:selectedUser.practice.id)
TimeSlot.create!(
  user: selectedUser,
  room: selectedRoom,
  text: Faker::Name.name   ,
  start:"2022-09-16T09:30:00",
  end: '2022-09-16T13:00:00',
  barColor: Faker::Color.hex_color,
  resource: resource.sample
)
selectedUser = User.all.sample
selectedRoom = Room.find_by(practice_id:selectedUser.practice.id)
TimeSlot.create!(
  user: selectedUser,
  room: selectedRoom,
  text: Faker::Name.name   ,
  start:"2022-09-16T09:30:00",
  end: '2022-09-16T13:00:00',
  barColor: Faker::Color.hex_color,
  resource: resource.sample
)
selectedUser = User.all.sample
selectedRoom = Room.find_by(practice_id:selectedUser.practice.id)
TimeSlot.create!(
  user: selectedUser,
  room: selectedRoom,
  text: Faker::Name.name   ,
  start:"2022-09-16T09:30:00",
  end: '2022-09-16T13:00:00',
  barColor: Faker::Color.hex_color,
  resource: resource.sample
)
