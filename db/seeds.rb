# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

john = User.create(name: 'John', email: 'john@mail.com', password: '123456')
lara = User.create(name: 'Lara', email: 'lara@mail.com', password: '123456')
bob  = User.create(name: 'Bob',  email: 'bob@mail.com',  password: '123456')


john.appointments.create(date: '2021-07-01', in: '08:00:06', lunch_start: '12:00:06', lunch_end: '13:00:06', out: '18:00:06')
john.appointments.create(date: '2021-07-02', in: '08:00:06', lunch_start: '12:00:06', lunch_end: '13:00:06', out: '18:00:06')
john.appointments.create(date: '2021-07-05', in: '08:00:06', lunch_start: '12:00:06', lunch_end: '13:00:06', out: '18:00:06')
john.appointments.create(date: '2021-07-06', in: '08:01:09', lunch_start: '11:58:06', lunch_end: '13:02:06', out: '18:00:06')
john.appointments.create(date: '2021-07-07', in: '08:01:09', lunch_start: '11:58:06', lunch_end: '13:02:06', out: '18:00:06')
john.appointments.create(date: '2021-07-08', in: '08:01:09', lunch_start: '11:58:06', lunch_end: '13:02:06', out: '18:00:06')

lara.appointments.create(date: '2021-07-01', in: '08:00:06', lunch_start: '12:00:06', lunch_end: '13:00:06', out: '18:00:06')
lara.appointments.create(date: '2021-07-02', in: '08:00:06', lunch_start: '12:00:06', lunch_end: '13:00:06', out: '18:00:06')
lara.appointments.create(date: '2021-07-05', in: '08:00:06', lunch_start: '12:00:06', lunch_end: '13:00:06', out: '18:00:06')
lara.appointments.create(date: '2021-07-06', in: '08:01:09', lunch_start: '11:58:06', lunch_end: '13:02:06', out: '18:00:06')
lara.appointments.create(date: '2021-07-07', in: '08:01:09', lunch_start: '11:58:06', lunch_end: '13:02:06', out: '18:00:06')
lara.appointments.create(date: '2021-07-08', in: '08:01:09', lunch_start: '11:58:06', lunch_end: '13:02:06', out: '18:00:06')

bob.appointments.create(date: '2021-07-01', in: '08:00:06', lunch_start: '12:00:06', lunch_end: '13:00:06', out: '18:00:06')
bob.appointments.create(date: '2021-07-02', in: '08:00:06', lunch_start: '12:00:06', lunch_end: '13:00:06', out: '18:00:06')
bob.appointments.create(date: '2021-07-05', in: '08:00:06', lunch_start: '12:00:06', lunch_end: '13:00:06', out: '18:00:06')
bob.appointments.create(date: '2021-07-06', in: '08:01:09', lunch_start: '11:58:06', lunch_end: '13:02:06', out: '18:00:06')
bob.appointments.create(date: '2021-07-07', in: '08:01:09', lunch_start: '11:58:06', lunch_end: '13:02:06', out: '18:00:06')
bob.appointments.create(date: '2021-07-08', in: '08:01:09', lunch_start: '11:58:06', lunch_end: '13:02:06', out: '18:00:06')