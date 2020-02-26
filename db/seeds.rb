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


john = Contact.new(first_name: 'John', last_name: 'Doe', phone_number: '+41787372019', user_id: marie.id)
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
