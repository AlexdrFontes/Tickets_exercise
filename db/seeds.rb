# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# unless Rails.env.production?
  # let's create some data to fill the database



  User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
  User.create!(email: 'admin@color.com', password: 'password', password_confirmation: 'password')
  User.create!(email: 'admin@fish.com', password: 'password', password_confirmation: 'password')




Venue.destroy_all
  venue1 = Venue.create!(
    name: 'BLKO',
    address: 'Rua Cintura do Porto, Prédio B, 5º A, 1950-326 Lisboa',
    website: 'blko.co.uk')
  venue2 = Venue.create!(
    name: 'Color Company',
    address: 'India',
    website: 'india.co.uk')
  venue3 = Venue.create!(
    name: 'Fish Company',
    address: 'Portimão',
    website: 'portimão.co.uk')
  venue4 = Venue.create!(
    name: 'Meat Company',
    address: 'Evora',
    website: 'evora.co.uk')


Event.destroy_all
  Event.create!(
    name: 'Web Developers Festival',
    venue: venue1,
    description: 'We web developers hang together and chat.',
    start_at: Time.zone.today + 20.days + 10.hours,
    end_at: Time.zone.today + 25.days + 20.hours,
    tickets_sold: 3,
    number_of_tickets_available: 20,
    ticket_price: 5,
    logo: File.new(Rails.root.join('spec', 'support', 'media', 'blko.png')))
  Event.create!(
    name: 'Color Swim Festival',
    venue: venue2,
    description: 'Swim in colorfull swimming pools.',
    start_at: Time.zone.today + 10.days + 5.hours,
    end_at: Time.zone.today + 11.days + 2.hours,
    tickets_sold: 0,
    number_of_tickets_available: 10,
    ticket_price: 30,
    logo: File.new(Rails.root.join('spec', 'support', 'media', 'blko.png')))
  Event.create!(
    name: 'Fish Food Festival',
    venue: venue3,
    description: 'Lets have some fish.',
    start_at: Time.zone.today + 14.days + 2.hours,
    end_at: Time.zone.today + 17.days + 12.hours,
    tickets_sold: 10,
    number_of_tickets_available: 43,
    ticket_price: 15,
    logo: File.new(Rails.root.join('spec', 'support', 'media', 'blko.png')))
  Event.create!(
    name: 'Meat Food Festival',
    venue: venue4,
    description: 'Lets have some meat.',
    start_at: Time.zone.today + 14.days + 2.hours,
    end_at: Time.zone.today + 17.days + 12.hours,
    tickets_sold: 15,
    number_of_tickets_available: 23,
    ticket_price: 10,
    logo: File.new(Rails.root.join('spec', 'support', 'media', 'blko.png')))


  # ticket_1 = Ticket.new(
  #   email: 'alexandrefontes90@gmail.com')
  # ticket_1.event_id = 1
  # ticket_1.save!

  # ticket_2 = Ticket.new(
  #   email: 'alexandrefontes90@example.com')
  # ticket_2.event_id = 2
  # ticket_2.save!

  # ticket_3 = Ticket.new(
  #   email: 'alexandrefontes90@yahoo.com')
  # ticket_3.event_id = 3
  # ticket_3.save!
# end
