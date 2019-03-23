# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

company_vanhack = Company.create!(name: 'VanHack')

event_sp_mission = Event.create!(
  company: company_vanhack,
  name: 'São Paulo Recruiting Mission',
  start_at: Time.parse('2019-03-23T08:00:00-0300'),
  end_at: Time.parse('2019-03-23T20:00:00-0300'),
  address: 'Sao Paulo Center - Av. Lineu de Paula Machado, 1088',
  image_url: 'https://i.imgur.com/ktlUkEg.jpg'
)

guest_john = Guest.create!(
  name: 'John Doe',
  email: 'john.doe@email.com'
)

task_interview_traction_guest = Task.create!(
  event: event_sp_mission,
  guest: guest_john,
  description: 'Interview at Traction Guest',
  start_at: Time.parse('2019-03-23T11:00:00-0300'),
  end_at: Time.parse('2019-03-23T11:30:00-0300'),
  location: 'Room Aeroporto',
  task_type: :scheduled
)

task_interview_company_x = Task.create!(
  event: event_sp_mission,
  guest: guest_john,
  description: 'Interview at Company X',
  start_at: Time.parse('2019-03-23T16:00:00-0300'),
  end_at: Time.parse('2019-03-23T16:30:00-0300'),
  location: 'Room Pacaembu',
  task_type: :scheduled
)

task_hackathon = Task.create!(
  event: event_sp_mission,
  guest: guest_john,
  description: 'Hackathon',
  start_at: Time.parse('2019-03-23T12:00:00.000Z'),
  end_at: Time.parse('2019-03-23T22:00:00.000Z'),
  location: 'Any of the 1st floor rooms',
  task_type: :free
)

guest_joanne = Guest.create!(
  name: 'Joanne Smith',
  email: 'joanne.smith@email.com'
)

task_interview_joanne1 = Task.create!(
  event: event_sp_mission,
  guest: guest_joanne,
  description: 'Interview at Faire',
  start_at: Time.parse('2019-03-23T15:00:00.000Z'),
  end_at: Time.parse('2019-03-23T15:30:00.000Z'),
  location: 'Room Pacaembu',
  task_type: :scheduled
)

task_interview_joanne1 = Task.create!(
  event: event_sp_mission,
  guest: guest_joanne,
  description: 'Interview at Traction Guest',
  start_at: Time.parse('2019-03-23T16:00:00.000Z'),
  end_at: Time.parse('2019-03-23T16:30:00.000Z'),
  location: 'Room Aeroporto',
  task_type: :scheduled
)

task_hackathon = Task.create!(
  event: event_sp_mission,
  guest: guest_joanne,
  description: 'Hackathon',
  start_at: Time.parse('2019-03-23T12:00:00.000Z'),
  end_at: Time.parse('2019-03-23T22:00:00.000Z'),
  location: 'Any of the 1st floor rooms',
  task_type: :free
)

####################################################################

company_hbo = Company.create!(name: 'HBO')

guest_snow = Guest.create!(
  name: 'Jon Snow',
  email: 'jon.snow@email.com'
)

event_winter = Event.create!(
  company: company_hbo,
  name: 'Winter',
  start_at: Time.parse('2019-03-30T00:00:00-0300'),
  end_at: Time.parse('2019-07-20T23:59:59-0300'),
  address: 'North of the Wall',
  image_url: 'https://i.imgur.com/4W6bITb.jpg'
)

task_jon_1 = Task.create!(
  event: event_winter,
  guest: guest_snow,
  description: 'Kill White Walkers',
  start_at: Time.parse('2019-03-30T00:00:00-0300'),
  end_at: Time.parse('2019-07-20T23:59:59-0300'),
  location: 'North of the Wall',
  task_type: :free
)

task_jon_1 = Task.create!(
  event: event_winter,
  guest: guest_snow,
  description: 'Meeting with Daenerys',
  start_at: Time.parse('2019-04-10T15:00:00.000Z'),
  end_at: Time.parse('2019-04-10T18:00:00.000Z'),
  location: 'The Wall',
  task_type: :scheduled
)

task_jon_1 = Task.create!(
  event: event_winter,
  guest: guest_snow,
  description: 'Be crowned king',
  start_at: Time.parse('2019-05-12T15:00:00.000Z'),
  end_at: Time.parse('2019-05-12T22:00:00.000Z'),
  location: 'Castle Lobby',
  task_type: :scheduled
)
