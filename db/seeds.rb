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
Information.destroy_all


puts 'Creating users...'


filem = URI.open('https://cdn.pixabay.com/photo/2017/02/16/23/10/smile-2072907_960_720.jpg')
marie = User.new(first_name: 'Nicoleta', last_name:'Dupont', email: 'Nicoleta@dupont.ch', :password => 'topsecret', :password_confirmation => 'topsecret')
marie.photo.attach(io: filem, filename: 'marie.jpg', content_type:'image/jpg')
marie.save


files = URI.open('https://cdn.pixabay.com/photo/2017/11/19/07/30/girl-2961959_960_720.jpg')
sarah = User.new(first_name: 'Sarah', last_name: 'Smith', email: 'sarah@smith.ch', :password => 'topsecret', :password_confirmation => 'topsecret')
sarah.photo.attach(io: files, filename: 'sarah.jpg', content_type:'image/jpg')
sarah.save

filej = URI.open('https://cdn.pixabay.com/photo/2015/09/02/13/24/girl-919048_960_720.jpg')
julie = User.new(first_name: 'Julie', last_name: 'Martin', email: 'julie@martin.ch', :password => 'topsecret', :password_confirmation => 'topsecret')
julie.photo.attach(io: filej, filename: 'julie.jpg', content_type:'image/jpg')
julie.save

puts 'Finished creating users!'

puts 'Creating contacts...'


lea = Contact.new(first_name: 'Léa', last_name: 'Medrano', phone_number: '+41763239592', user_id: marie.id)
lea.save
marc = Contact.new(first_name: 'Marc', last_name: 'Smith', phone_number: '+41792222222', user_id: sarah.id)
marc.save
chuck = Contact.new(first_name: 'Chuck', last_name: 'Norris', phone_number: '+41793333333', user_id: julie.id)
chuck.save

puts 'Finished creating contacts!'


# puts 'Creating alerts...'

# sleep 1
# alert1 = Alert.new(started_at: DateTime.now, user_id: marie.id, latitude: 46.78365, longitude: 7.151964)
# alert1.save!
# sleep 1
# alert2 = Alert.new(started_at: DateTime.now, user_id: marie.id, latitude: 46.5218269, longitude: 6.6327025)
# alert2.save
# sleep 1
# alert3 = Alert.new(started_at: DateTime.now, user_id: sarah.id, latitude: 46.2017559, longitude: 6.1466014)
# alert3.save
# sleep 1
# alert4 = Alert.new(started_at: DateTime.now, user_id: julie.id, latitude: 46.9482713, longitude: 7.4514512)
# alert4.save
# sleep 1

# puts 'Finished creating alerts!'

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

chat4 = ChatRoom.new(name: 'Mes droits')
chat4.save

chat5 = ChatRoom.new(name: "Soutien")
chat5.save


puts 'Finished creating the chat!'

puts 'Creating informations...'

info1 = Information.new(title: 'Unité de médecine des violences (UMV)', description: "L'UMV a trois missions : assurer aux victimes de violences une consultation médico-légale, assurer aux professionnels une offre de conseils et de formation, développer des projets de recherche sur la thématique des violences interpersonnelles.", phone_number: '+41 21 314 00 60', email: 'curml.central@chuv.ch', website: 'https://www.curml.ch/unite-de-medecine-des-violences-umv', location: 'Rue du Bugnon 44
1011 Lausanne')
info1.save

info2 = Information.new(title: 'Solidarité Femmes et Centre LAVI', description: 'Professionnelles formées dans le domaine de la violence faite aux femmes. Elles interviennent par téléphone, par mail ou lors d’une consultation sur rendez-vous, gratuite et confidentielle. Elles offrent de l’écoute, des informations et du soutien aux personnes concernées.
Leur association dispose également d’une structure d’accueil pour les femmes et leurs enfants ayant besoin de sécurité.', phone_number: '+41 26 322 22 02', website: 'http://www.sf-lavi.ch/', location: 'Rue de Lausanne 91, 1700 Fribourg')
info2.save

info3 = Information.new(title: 'Association PAV (Pôle Agression et Violence)', description: "Le PAV est une association vaudoise d'aide et de soutien aux personnes victimes de violences avec impacts sur la sphère intime, mineurs et majeurs LGBTI+ (Lesbienne, Gay, Bi, Trans*, Intersexe) ainsi qu'à leur entourage. Toutes personnes souhaitant bénéficier de notre soutien est la bienvenue. Nous pouvons intervenir et offrir nos services sur l'ensemble de la Suisse romande.", phone_number: '+41 77 438 96 50', email: 'info@association-pav.ch', website: 'https://association-pav.ch/', location: '1000 Lausanne')
info3.save

info4 = Information.new(title: 'Association MILLE SEPT SANS', description: 'MILLE SEPT SANS est une association fribourgeoise de sensibilisation au harcèlement de rue. L’objectif ultime de l’association est de promouvoir le respect, les rapports sociaux cordiaux entre les êtres humains, le partage, la bienveillance et le vivre ensemble.', phone_number: '+41 77 438 96 50', email: 'contact@milleseptsans.ch', website: 'http://milleseptsans.ch/', location: 'Route des Bonnesfontaines 48 1700 Fribourg')
info4.save

info5 = Information.new(title: 'Viol secours', description: "Que vous ayez vécu des violences sexuelles récemment ou dans le passé, nous vous proposons, ainsi qu’à vos proches et aux professionnel·le·s, un soutien concret : permanence téléphonique, information, écoute, accompagnement et conseils dans les démarches personnelles, juridiques, médicales, entretiens individuels psychosociaux et psychomoteurs, expression créatrice et corporelle. Ces prestations sont gratuites et confidentielles. L'anonymat est possible.", phone_number: '+41 22 345 20 20', email: 'info@viol-secours.ch', website: 'https://www.viol-secours.ch/site2/index.html', location: 'Place des Charmilles 3 1203 Genève (Suisse) Code d’immeuble : 33432')
info5.save

info6 = Information.new(title: 'Refuge Genève', description: 'Espace d’accueil et d’hébergement pour jeunes LGBTIQ+', phone_number: '+41 22 906 40 35', email: 'accueil@refuge-geneve.ch', website: 'https://refuge-geneve.ch/', location: 'Rue de la Navigation 13, 1201 Genève')
info6.save

info7 = Information.new(title: 'Le CELVS', description: 'Le Collectif d’étudiant.e.s en Lutte contre les violences sexistes et le harcèlement sexuel', phone_number: 'Paola Mori: +41 79 684 11 08 ou Hélène Rey Hanson: +41 79 915 50 26', email: 'celvs@unige.ch/confiance@unige.ch', website:'http://ael-unige.ch/vie-estudiantine/information-et-prevention-contre-le-harcelement-sexiste-et-sexuel/', location: 'Genève')
info7.save

info7 = Information.new(title: 'Slutwalk', description: 'Slutwalk Suisse est une association féministe luttant contre les violences sexistes et sexuelles, la stigmatisation des victimes et le Slutshaming.', email: 'slutwalksuisse@gmail.com', website: 'https://www.facebook.com/slutwalksuisse/')
info7.save

info7 = Information.new(title: 'F-Information', description: 'F-information est un espace à Genève pour soutenir les femmes et familles dans la vie de tous les jours. Vous pouvez obtenir des réponses dans les domaines professionnels, juridiques, psycho-sociaux au moyen de consultations individuelles, en participant à l’une ou plusieurs de nos nombreuses activités collectives ou en consultant les documents de la bibliothèque Filigrane spécialisée sur les thèmes Femmes, Genre, Egalité.', phone_number: '+41 22 740 31 00', email: 'femmes@f-information.org', website:'https://www.f-information.org/', location: '67, rue de la Servette  1202 Genève')
info7.save

info8 = Information.new(title: 'Bureau Information Femmes', description: "Le Bureau information femmes est un espace d'accueil, un lieu d'écoute, d'informations et d'orientation à la disposition de tous (femmes et hommes).", phone_number: '+41 21 320 04 04', email: 'info@bif-vd.ch', website:'www.bif-vd.ch/', location: 'Maison de la Femme,  Avenue Églantine 6, 1005 Lausanne')
info8.save

info9 = Information.new(title: 'Centre Prévention de l’Ale (CPAle)', description: "Le Centre Prévention de l'Ale offre une écoute et une aide concrète – un suivi spécialisé – pour trouver des alternatives à la violence conjugale ou familiale.", phone_number: '+41 21 321 24 00', email: 'prevention-ale.ch', website:'https://prevention-ale.ch/', location: "Rue de l' Ale 30 ,1003 Lausanne")
info9.save

puts 'Finished creating informations!'
