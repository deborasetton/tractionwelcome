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
  image_url: nil
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
  task_type: :scheduled
)

task_interview_company_x = Task.create!(
  event: event_sp_mission,
  guest: guest_john,
  description: 'Interview at Company X',
  start_at: Time.parse('2019-03-23T16:00:00-0300'),
  end_at: Time.parse('2019-03-23T16:30:00-0300'),
  task_type: :scheduled
)

task_hackathon = Task.create!(
  event: event_sp_mission,
  guest: guest_john,
  description: 'Hackathon',
  start_at: Time.parse('2019-03-23T09:00:00-0300'),
  end_at: Time.parse('2019-03-23T19:00:00-0300'),
  task_type: :free
)
