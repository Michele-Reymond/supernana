# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all


puts 'Creating users...'


filem = URI.open('https://cdn.pixabay.com/photo/2017/02/16/23/10/smile-2072907_960_720.jpg')
marie = User.new(first_name: 'Marie', last_name:'Dupont', email: 'marie@lepoulpe.ch', :password => 'topsecret', :password_confirmation => 'topsecret')
marie.photo.attach(io: filem, filename: 'marie.jpg', content_type:'image/jpg')
marie.save


files = URI.open('https://cdn.pixabay.com/photo/2017/11/19/07/30/girl-2961959_960_720.jpg')
sarah = User.new(first_name: 'Sarah', last_name: 'Smith', email: 'sarah@croche.ch', :password => 'topsecret', :password_confirmation => 'topsecret')
sarah.photo.attach(io: files, filename: 'sarah.jpg', content_type:'image/jpg')
sarah.save

filej = URI.open('https://cdn.pixabay.com/photo/2015/09/02/13/24/girl-919048_960_720.jpg')
julie = User.new(first_name: 'Julie', last_name: 'Hello', email: 'julie@hello.ch', :password => 'topsecret', :password_confirmation => 'topsecret')
julie.photo.attach(io: filej, filename: 'julie.jpg', content_type:'image/jpg')
julie.save

puts 'Finished creating users!'

puts 'Creating contacts...'


john = Contact.new(first_name: 'John', last_name: 'Doe', phone_number: '+41791111111', user_id: marie.id)
john.save
marc = Contact.new(first_name: 'Marc', last_name: 'Smith', phone_number: '+41792222222', user_id: sarah.id)
marc.save
chuck = Contact.new(first_name: 'Chuck', last_name: 'Norris', phone_number: '+41793333333', user_id: julie.id)
chuck.save

puts 'Finished creating contacts!'


puts 'Creating alerts...'

alert1 = Alert.new(started_at: "25/02/2020 10:00", user_id: marie.id)
alert1.save

alert2 = Alert.new(started_at: "25/02/2020 12:00", user_id: marie.id)
alert2.save

alert3 = Alert.new(started_at: "25/02/2020 15:00", user_id: sarah.id)
alert3.save

alert4 = Alert.new(started_at: "25/02/2020 17:00", user_id: julie.id)
alert4.save


puts 'Finished creating alerts!'
