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


filen = URI.open('https://zupimages.net/up/20/10/zsen.jpeg')
nicoleta = User.new(first_name: 'Nicoleta', last_name:'Dudau', email: 'nicoleta@dudau.ch', :password => 'topsecret', :password_confirmation => 'topsecret')
nicoleta.photo.attach(io: filen, filename: 'nicoleta.jpeg', content_type:'image/jpeg')
nicoleta.save


filel = URI.open('https://zupimages.net/up/20/10/bh8w.jpeg')
lea = User.new(first_name: 'Léa', last_name: 'Medrano', email: 'lea@medrano.ch', :password => 'topsecret', :password_confirmation => 'topsecret')
lea.photo.attach(io: filel, filename: 'lea.jpeg', content_type:'image/jpeg')
lea.save

filem = URI.open('https://cdn.pixabay.com/photo/2015/09/02/13/24/girl-919048_960_720.jpg')
michele = User.new(first_name: 'Michèle', last_name: 'Reymond', email: 'michele@reymond.ch', :password => 'topsecret', :password_confirmation => 'topsecret')
michele.photo.attach(io: filem, filename: 'michele.jpg', content_type:'image/jpg')
michele.save

puts 'Finished creating users!'

puts 'Creating contacts...'


nicoleta = Contact.new(first_name: 'Nicoleta', last_name: 'Dudau', phone_number: '+41763239592', user_id: lea.id)
nicoleta.save!

michele2 = Contact.new(first_name: 'Michèle', last_name: 'Reymond', phone_number: '+41787372019', user_id: michele.id)
michele2.save!

marielle = Contact.new(first_name: 'Marielle', last_name: 'Gueissaz', phone_number: '+41783450520', user_id: michele.id)
marielle.save!

lauriane = Contact.new(first_name: 'Lauriane', last_name: 'Bonnet', phone_number: '+41795810061', user_id: michele.id)
lauriane.save!

emilie = Contact.new(first_name: 'Emilie', last_name: 'Keller', phone_number: '+41788232165', user_id: michele.id)
emilie.save!

georgina = Contact.new(first_name: 'Georgina', last_name: 'Noten', phone_number: '+41795721678', user_id: michele.id)
georgina.save!

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

doc1 = Document.new(title: 'Le Musée du Harcèlement de Rue', content: "Cette invitation à visiter un musée fictif du harcèlement de rue, le MdHR, illustre la volonté de la Ville de Lausanne et de ses partenaires de voir le harcèlement de rue appartenir un jour au passé. Une vidéo dans laquelle l’humoriste Yann Marguet nous sert de guide, a également été réalisée pour nous projeter dans cet avenir que l’on espère proche.", author: 'Une campagne de la Ville de Lausanne, en collaboration avec Messieurs.ch et Yann Marguet.', url: "https://www.mdhr.ch/")
doc1.save

doc2 = Document.new(title: "Du sexisme ordinaire aux violences sexuelles: repérer pour agir.", content:"Le respect de soi et des autres est un élément fondamental d’une vie personnelle et sociale harmonieuse et ouverte à autrui, et doit s’acquérir très tôt. Le rôle des enseignant-e-s ou intervenant-e-s sociaux et sociales dans la lutte contre toute forme de discrimination ou de violence est donc essentiel. " , author: "Bureau de la promotion de l’égalité entre femmes et hommes et de prévention des violences domestiques ", url: "https://www.ge.ch/document/du-sexisme-ordinaire-aux-violences-sexuelles-reperer-agir-guide-intention-professionnel-2018/telecharger")
doc2.save

doc3 = Document.new(title: "Agir activement contre le harcèlement de rue", content:"Agir activement: Seul.e* ou en groupe, je ne harcèle pas. Je désapprouve toute situation de harcèlement de rue que je vois ou dont j’entends parler. Si la situation le permet, je défends, je soutiens, je protège la personne qui subit du harcèlement. Je parle de ce que j’ai subi autour de moi ou de ce dont j’ai été témoin. Je sensibilise mon entourage à la prévention contre le harcèlement de rue." , author: "Association Mille Sept Sans", url: "http://milleseptsans.ch/agir/")
doc3.save

doc4 = Document.new(title: "Harcèlement de Rue - Monthey", content:"La Ville de Monthey s'engage contre le harcèlement de rue. Elle entend assurer la sécurité de toutes et tous et préserver la qualité des espaces publics." , author: "Ville de Monthey", url: "https://www.monthey.ch/harcelement")
doc4.save

doc5 = Document.new(title: "Ces femmes qui courent pour distancer le harcèlement de rue", content:"Ce qui pouvait passer jadis pour de la drague lourde n’est plus acceptable pour les jeunes femmes d’aujourd’hui. A Genève, deux étudiantes amatrices de course à pied ont mené une action pour lutter contre les commentaires sexistes et se réapproprier l’espace public. Un concept français qui pourrait s’implanter en Suisse." , author: "Katy Romy pour Swissinfo.ch", url: "https://www.swissinfo.ch/fre/societe/\%C3\%A9galit\%C3\%A9-dans-l-espace-public_ces-femmes-qui-courent-pour-distancier-le-harc\%C3\%A8lement-de-rue/45117580")
doc5.save

doc6 = Document.new(title: "Harcèlement de rue : la règle des “5D”, une méthode à connaître pour aider une victime et intervenir en toute sécurité", content:"Comment agir si l’on est témoin de harcèlement de rue ?  La formation Stand Up, programme lancé en partenariat avec L’Oréal Paris, l’ONG Hollaback! et la Fondation des Femmes pour lutter contre le harcèlement de rue, propose au grand public d’apprendre et de mettre en pratique la règle des “5D.”" , author: "Femme Actuelle", url: "hhttps://www.femmeactuelle.fr/actu/news-actu/harcelement-de-rue-la-regle-des-5d-une-methode-a-connaitre-pour-aider-une-victime-et-intervenir-en-toute-securite-2091301")
doc6.save

doc7 = Document.new(title: "Le harcèlement de rue, une forme de 'menace invisible'", content:"La Ville de Lausanne a lancé lundi une nouvelle campagne de sensibilisation au harcèlement de rue. L'occasion de faire le point sur ce phénomène qui, selon une étude, concerne plus de 70\% des Lausannoises de 16 à 35 ans." , author: "Pauline Turuban pour RTS.ch", url: "https://www.rts.ch/info/regions/vaud/9532225-le-harcelement-de-rue-une-forme-de-menace-invisible-.html")
doc7.save

doc8 = Document.new(title: "La ville de Fribourg contre le harcèlement de rue", content:"La Ville de Fribourg souhaite mieux connaître et combattre le harcèlement de rue. Elle a ainsi mandaté la Haute école de travail social (HETS-FR) pour réaliser une étude sur le phénomène, dans le but: d'identifier et d'analyser l’ampleur, les formes, les moments et les endroits où s’exerce le harcèlement de rue; d'établir un inventaire des mesures déjà existantes pour gérer ses effets; de permettre la conception de mesures d’amélioration complémentaires." , author: "Ville de Fribourg", url: "https://www.ville-fribourg.ch/vivre-ensemble/harcelement-de-rue")
doc8.save

doc9 = Document.new(title: "Lausanne chasse le harcèlement de rue", content:"Regard insistant, insultes, gestes obscènes ou attouchements: les Lausannois pourront dénoncer ces actes et d’autres survenus dans des lieux publics sur l’application et le site de la ville." , author: "Sophie Dupont pour Laliberté.ch", url: "https://www.laliberte.ch/news/regions/vaud/lausanne-chasse-le-harcelement-de-rue-543789")
doc9.save

doc10 = Document.new(title: "L’Alternative lutte contre le harcèlement de rue", content:"La motion déposée à la veille du 8 mars, Journée de la femme par les Verts au Municipal vise à la mise en place de mesures de protection des victimes." , author: "Tribune de Genève", url: "https://www.tdg.ch/geneve/actu-genevoise/alternative-lutte-harcelement-rue/story/26929515")
doc10.save

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
