
#   Création des catégories
require "open-uri"

cat1 = URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1615965497/0avu8tupojqrtc8fy398h5jc7a9c.jpg")
cat2 = URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1615965499/j1pmnvk6idon5f2s7f7uqub9vqup.jpg")
cat3 = URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1615965501/kcn6uhdmjhifrqbpfk1brz8uy1zl.png")

Category.destroy_all
Category.create(name: "Service Juridique", description: "Vous avez signé un pacte avec une entité Démoniaque mais vous n'êtes plus certain de vouloir aller au bout ? Pas d'inquiétude, notre service juridique vous accompagne dans toutes vos démarches.").photo.attach(io: cat1, filename: 'devil.png', content_type: 'image/png')
Category.create(name: "Expertise médicale", description: "Possession Démoniaque ou léger accès schizophrénique, véritable Poltergeist ou Délirium tremens bénin ? Notre équipe médicale est là pour vous aider à y voir clair.").photo.attach(io: cat2, filename: 'west.jpg', content_type: 'image/jpg')
Category.create(name: "Désinfection", description: "Une entité Maléfique a pris possession de l'un de vos proches, un ectoplasme récalcitrant vous mène la vie dure ? N'hésitez plus et faites appel à notre équipe d'experts !").photo.attach(io: cat3, filename: 'exorc.jpg', content_type: 'image/png')
puts"Category created"

#   Création des specialistes

#   Création des juristes
lawyer_id = Category.find_by_name("Service Juridique").id

#Milton
spl1 = URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1615965749/p8x49gzjy1yvilebkjx5fyx3efj7.png")
spl1bis = URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1615966234/qp03kps7klu207tixmlh9c6oxo19.png")

lawyer1 = Specialist.create(firstname: "John", lastname: "Milton", profession: "Juriste",
description: "Selon la croyance chrétienne traditionnelle sur la sorcellerie, le pacte est noué entre une personne et Satan (ou un moindre démon). La personne offre son âme en échange de faveurs diaboliques. Ces faveurs varient selon les contes, mais tendent à inclure la jeunesse, la connaissance, la richesse, la renommée, et/ou le pouvoir.", category_id: lawyer_id)
lawyer1.photos.attach(io: spl1, filename: 'milton.jpg', content_type: 'image/jpg')
lawyer1.photos.attach(io: spl1bis, filename: 'milton2.jpg', content_type: 'image/jpg')
puts"..."
#Belzeboss
spl2 = URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1615966234/ju343ib9u6sayr4k8eberngr0ufn.jpg")
spl2bis = URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1615919679/v3iy8t50h5p6jzkfsyh5qpyadg3q.jpg")

lawyer2 = Specialist.create(firstname: "BelzeBoss", lastname: "", profession: "Juriste",
description: "Yes, you are stuck, so out of luck, Now I'm complete and my jock you will pluck, This world will be mine and you're first in line
You brought me the pick and now you shall both die!", category_id: lawyer_id)
lawyer2.photos.attach(io: spl2, filename: 'belze.jpg', content_type: 'image/jpg')
lawyer2.photos.attach(io: spl2bis, filename: 'boss.jpg', content_type: 'image/jpg')

puts"Lawyers created"

#   Création du service médical
doctor_id = Category.find_by_name("Expertise médicale").id
#Hannibal
spd1 =  URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1615966343/00ybgzplt79sqvkjxp960l72l4tw.png")
spd1bis =  URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1615966344/5e3fv1tyrkxudw0d34nbz0vhq2lr.jpg")
doctor1 = Specialist.create(firstname: "Hannibal", lastname: "Lecter", profession: "Psychiatre",
description: "Offrez-vous un moment de pure introspection, une plongée vivifiante et gustative au sein de votre inconscient le plus profond, le tout dans une ambiance tamisée et cosy. Attention, soyez à l'heure et soignez votre présentation. Le Docteur est un brin à cheval sur les règles de politesse.
Bon à savoir : Si Hannibal souhaite vous inviter à dîner hors de nos locaux, refusez poliment et prévenez immédiatement Clarisse du S.A.V", category_id: doctor_id)
doctor1.photos.attach(io: spd1, filename: 'hannibal.jpg', content_type: 'image/jpg')
doctor1.photos.attach(io: spd1bis, filename: 'lecter.jpg', content_type: 'image/jpg')
puts"..."



#Annie Wilkes
spd2 =  URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1615966459/ktahx9x1f214epktpdpligsa73r6.png")
spd2bis =  URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1615966460/z8has8vfssxgsfdcw3ejwv6badj5.jpg")
doctor2 = Specialist.create(firstname: "Annie", lastname: "Wilkes", profession: "Infirmière",
description: "Petite cure de neuroleptiques ou simple besoin de vitamines après un Exorcisme un brin traumatisant ? Pas de panique, notre infirmière en chef, Annie, est là pour vous administrer le bon remède. Véritable virtuose de la seringue et spécialiste des articulations, Annie et son équipe prendront soin de vous comme il se doit. Bon à savoir: Caractère un peu soupe au lait et un brin sensible, déteste les spoilers sur sa série préférée", category_id: doctor_id)
doctor2.photos.attach(io: spd2, filename: 'annie.jpg', content_type: 'image/jpg')
doctor2.photos.attach(io: spd2bis, filename: 'wilkes.jpg', content_type: 'image/jpg')

puts"Doctors created"

#   Création du service désinfection
priest_id = Category.find_by_name("Désinfection").id
# Père Karras
spp1 =  URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1615966755/nksc2pfb3nooy7j9qf3wy9o7bgdy.png")
spp1bis =  URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1615966756/qcw1g89ro8evbg6nv0q7clyaummx.jpg")
priest1 = Specialist.create(firstname: "Père", lastname: "Karras", profession: "Exorciste",
description: "Bien que d'apparence rustique et un peu austère, le Père Karras saura vous surprendre par sa coolitude extrème et son flegme rassurant.
Véritable légende vivante, le Père Karras affiche un tableau de chasse impressionnant : Pazuzu, Bélial, Dark Vador, Maître Gims...Souvent copié, jamais égalé. Il est le roi de l'Exorcisme vintage.Bon à savoir : A tendance à se défenestrer pour conclure ses rituels. Pas d'inquiétude, c'est sa manière à lui de fêter ses victoires...", category_id: priest_id)
priest1.photos.attach(io: spp1, filename: 'pere.jpg', content_type: 'image/jpg')
priest1.photos.attach(io: spp1bis, filename: 'karras.jpg', content_type: 'image/jpg')
puts"..."

#Papa Emeritus
spp2 =  URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1615966576/2q1f8zy4l30to0vytcqxzvh8vt76.png")
spp2bis =  URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1615966577/hnwc95ns3p34jino2g7kkhd8zrxz.jpg")
priest2 = Specialist.create(firstname: "Papa", lastname: "Emeritus", profession: "Exorciste",
description: "Sa grande connaissance des rituels sataniques et du bestiaire démoniaque font de lui un Exorciste peu académique, mais d'une efficacité redoutable. Affichant un look glam et décomplexé, Papa Emeritus, jamais à cour de punchlines savoureuses, allie à la fois puissance et grâce pour un Exorcisme Premium au taux de réussite impressionnant.</p>
 Bon à savoir :A parfois tendance à sympathiser avec l'entité démoniaque... surprenant mais toujours hautement festif.", category_id: priest_id)
priest2.photos.attach(io: spp2, filename: 'papa.jpg', content_type: 'image/jpg')
priest2.photos.attach(io: spp2bis, filename: 'emeritus.jpg', content_type: 'image/jpg')

puts"Priests created"