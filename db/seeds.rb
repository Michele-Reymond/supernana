# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Contact.destroy_all
Message.destroy_all
Alert.destroy_all
User.destroy_all
Document.destroy_all
ChatRoom.destroy_all


puts 'Creating users...'


filem = URI.open('https://cdn.pixabay.com/photo/2017/02/16/23/10/smile-2072907_960_720.jpg')
marie = User.new(first_name: 'Marie', last_name:'Dupont', email: 'marie@lepoulpe.ch', :password => 'topsecret', :password_confirmation => 'topsecret')
marie.photo.attach(io: filem, filename: 'marie.jpg', content_type:'image/jpg')
marie.save


files = URI.open('https://cdn.pixabay.com/photo/2017/11/19/07/30/girl-2961959_960_720.jpg')
sarah = User.new(first_name: 'Sarah', last_name: 'Croche', email: 'sarah@croche.ch', :password => 'topsecret', :password_confirmation => 'topsecret')
sarah.photo.attach(io: files, filename: 'sarah.jpg', content_type:'image/jpg')
sarah.save

filej = URI.open('https://cdn.pixabay.com/photo/2015/09/02/13/24/girl-919048_960_720.jpg')
julie = User.new(first_name: 'Julie', last_name: 'Hello', email: 'julie@hello.ch', :password => 'topsecret', :password_confirmation => 'topsecret')
julie.photo.attach(io: filej, filename: 'julie.jpg', content_type:'image/jpg')
julie.save

puts 'Finished creating users!'

puts 'Creating contacts...'


john = Contact.new(first_name: 'John', last_name: 'Doe', phone_number: '+41787372019', user_id: marie.id)
john.save
marc = Contact.new(first_name: 'Marc', last_name: 'Smith', phone_number: '+41792222222', user_id: sarah.id)
marc.save
chuck = Contact.new(first_name: 'Chuck', last_name: 'Norris', phone_number: '+41793333333', user_id: julie.id)
chuck.save

puts 'Finished creating contacts!'


puts 'Creating alerts...'

# byebug
alert1 = Alert.new(started_at: DateTime.now, user_id: marie.id, latitude: 46.78365, longitude: 7.151964)
alert1.save!

alert2 = Alert.new(started_at: DateTime.now, user_id: marie.id, latitude: 46.5218269, longitude: 6.6327025)
alert2.save

alert3 = Alert.new(started_at: DateTime.now, user_id: sarah.id, latitude: 46.2017559, longitude: 6.1466014)
alert3.save

alert4 = Alert.new(started_at: DateTime.now, user_id: julie.id, latitude: 46.9482713, longitude: 7.4514512)
alert4.save



puts 'Finished creating alerts!'

puts 'Creating documents...'

doc1 = Document.new(title: 'La prévention', content: "Le PAV s'engage entend mener au moins une campagne de prévention
par an sur une thématique visant des publics cibles spécifiques (comme par exemple des auteur·e·s ayant passé à l'acte
ou étant susceptibles de le faire ou des personnes ayant des facteurs de risque élevés d’être victimes).
Nous avons également pour objectif de sensibiliser la population en général et de politiser ces thématiques.
Nos actions de prévention s’insèrent dans une stratégie qui vise à informer et à réduire les risques des personnes
susceptibles de vivre une situation de violence avec impacts sur la sphère intime mais aussi à sensibiliser la société
en général. Dans la conception de notre intervention, faire de la prévention à l’intention de potentiel·le·s auteur·e·s,
de leur entourage et de la société dans son ensemble a pour finalité de mettre l’accent sur la responsabilité individuelle
et collective de chacun·e et de diminuer l’effet du tabou sur ces questions.", author: 'Association PAV (Pôle Agression et Violence)', url: "https://association-pav.ch/prevention/")
doc1.save

doc2 = Document.new(title: "Comment j’ai appris à revivre après avoir été victime d’un viol", content:"Suite à l’article que j’ai lu dans ZEP sur une jeune fille violée à l’âge de 13 ans,
j’ai souhaité réagir. Récemment une de mes amies a été elle aussi violée. Elle n’en a parlé qu’à moi, elle habite à l’autre
bout du monde. Après une tentative de suicide elle a été prise en charge par un hôpital en Australie, à côté de là où elle habite.
Tous les jours, nous parlons par Whatsapp, elle a besoin de soutien, elle a besoin que je lui rappelle chaque minute qui passe qu’elle
n’est pas fautive, qu’elle n’est pas dégoûtante, qu’elle est courageuse, qu’elle ne doit pas détruire son corps, qu’elle est importante
pour de nombreuses personnes, que personne ne va la juger, qu’elle a encore de belles choses à vivre et surtout, qu’elle va réussir à
survivre et à retrouver le sourire." , author: "Mélissa A.", url: "https://www.la-zep.fr/intimite/victime-dun-viol-comment-revivre/")
doc2.save

puts 'Finished creating documents!'

puts 'Creating a chat...'

chat1 = ChatRoom.new(name: 'Général')
chat1.save

chat2 = ChatRoom.new(name: 'Témoignages')
chat2.save

chat3 = ChatRoom.new(name: 'Actualités')
chat3.save

chat4 = ChatRoom.new(name: 'Violence à la maison, quelles solutions?')
chat4.save

chat5 = ChatRoom.new(name: 'Harcèlement au travail, quels sont mes droits?')
chat5.save

chat6 = ChatRoom.new(name: "Le féminisme pour vous, c'est quoi?")
chat6.save

chat7 = ChatRoom.new(name: 'Comment se reconstruire après un viol?')
chat7.save

chat8 = ChatRoom.new(name: "Victime, d'une agression de rue, j'aimerais reprendre possession de mon corps")
chat8.save

chat9 = ChatRoom.new(name: "Je n'aime pas mon corps")
chat9.save

chat10 = ChatRoom.new(name: "Suis-je vicitme d'harcèlement verbal?")
chat10.save

puts 'Finished creating the chat!'
