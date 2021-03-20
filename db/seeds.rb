
#   Création des catégories
require "open-uri"

cat1 = URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1615965497/0avu8tupojqrtc8fy398h5jc7a9c.jpg")
cat2 = URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1615965499/j1pmnvk6idon5f2s7f7uqub9vqup.jpg")
cat3 = URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1615965501/kcn6uhdmjhifrqbpfk1brz8uy1zl.png")
spl1 = URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1616275842/v5zdz6pw580g7app7mqthl604rvx.png")
spl1bis = URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1616275843/8abo10tv91mjarjfgbei0t4cseyc.png")
spl2 = URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1616275844/lxsxbtixk8i5wnhp5b9nqtambijh.jpg")
spl2bis = URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1616275845/6yw3g3oxe927nd0jfqymvh47rp6e.jpg")
spd1 =  URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1616275847/2vyc8dtcra9jkck19ls2ht9hinz9.png")
spd1bis =  URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1616275848/c6kj73xhndowb0mf0y4xwanf45xf.jpg")
spd2 =  URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1616275849/od13lg36x309mivd7hoi0ops6kdk.png")
spd2bis =  URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1616275850/9zbqxa6ntae3skffp05ppg0xrp5g.jpg")
spp1 =  URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1616275852/p3e09ukru7b3ww0ux6wlerm33gwj.png")
spp1bis =  URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1616275854/ssczznniak2c2ryymtfpycap9qu0.jpg")
spp2 =  URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1616275855/kko9lg6eean2f0x7uqp8czpc988q.png")
spp2bis =  URI.open("https://res.cloudinary.com/dsmxleyf5/image/upload/v1616275858/a26ek2296eepo5h2w7uaw7nd9vcx.jpg")


Category.destroy_all
Category.create(name: "Service Juridique", description: "Vous avez signé un pacte avec une entité Démoniaque mais vous n'êtes plus certain de vouloir aller au bout ? Pas d'inquiétude, notre service juridique vous accompagne dans toutes vos démarches.").photo.attach(io: cat1, filename: 'devil.jpg', content_type: 'image/jpg')
Category.create(name: "Expertise médicale", description: "Possession Démoniaque ou léger accès schizophrénique, véritable Poltergeist ou Délirium tremens bénin ? Notre équipe médicale est là pour vous aider à y voir clair.").photo.attach(io: cat2, filename: 'west.jpg', content_type: 'image/jpg')
Category.create(name: "Désinfection", description: "Une entité Maléfique a pris possession de l'un de vos proches, un ectoplasme récalcitrant vous mène la vie dure ? N'hésitez plus et faites appel à notre équipe d'experts !").photo.attach(io: cat3, filename: 'exorc.png', content_type: 'image/png')
puts"Category created"

#   Création des specialistes
Specialist.destroy_all
#   Création des juristes
lawyer_id = Category.find_by_name("Service Juridique").id

#Milton

lawyer1 = Specialist.create(firstname: "John", lastname: "Milton", profession: "Juriste",
description: "Selon la croyance chrétienne traditionnelle sur la sorcellerie, le pacte est noué entre une personne et Satan (ou un moindre démon). La personne offre son âme en échange de faveurs diaboliques. Ces faveurs varient selon les contes, mais tendent à inclure la jeunesse, la connaissance, la richesse, la renommée, et/ou le pouvoir.", category_id: lawyer_id)
lawyer1.photos.attach(io: spl1, filename: 'milton.png', content_type: 'image/png')
lawyer1.photos.attach(io: spl1bis, filename: 'milton2.png', content_type: 'image/png')
puts"..."
#Belzeboss


lawyer2 = Specialist.create(firstname: "BelzeBoss", lastname: "", profession: "Juriste",
description: "Yes, you are stuck, so out of luck, Now I'm complete and my jock you will pluck, This world will be mine and you're first in line
You brought me the pick and now you shall both die!", category_id: lawyer_id)
lawyer2.photos.attach(io: spl2, filename: 'belze.jpg', content_type: 'image/jpg')
lawyer2.photos.attach(io: spl2bis, filename: 'boss.jpg', content_type: 'image/jpg')

puts"Lawyers created"

#   Création du service médical
doctor_id = Category.find_by_name("Expertise médicale").id
#Hannibal

doctor1 = Specialist.create(firstname: "Hannibal", lastname: "Lecter", profession: "Psychiatre",
description: "Offrez-vous un moment de pure introspection, une plongée vivifiante et gustative au sein de votre inconscient le plus profond, le tout dans une ambiance tamisée et cosy. Attention, soyez à l'heure et soignez votre présentation. Le Docteur est un brin à cheval sur les règles de politesse.
Bon à savoir : Si Hannibal souhaite vous inviter à dîner hors de nos locaux, refusez poliment et prévenez immédiatement Clarisse du S.A.V", category_id: doctor_id)
doctor1.photos.attach(io: spd1, filename: 'hannibal.png', content_type: 'image/png')
doctor1.photos.attach(io: spd1bis, filename: 'lecter.jpg', content_type: 'image/jpg')
puts"..."



#Annie Wilkes

doctor2 = Specialist.create(firstname: "Annie", lastname: "Wilkes", profession: "Infirmière",
description: "Petite cure de neuroleptiques ou simple besoin de vitamines après un Exorcisme un brin traumatisant ? Pas de panique, notre infirmière en chef, Annie, est là pour vous administrer le bon remède. Véritable virtuose de la seringue et spécialiste des articulations, Annie et son équipe prendront soin de vous comme il se doit. Bon à savoir: Caractère un peu soupe au lait et un brin sensible, déteste les spoilers sur sa série préférée", category_id: doctor_id)
doctor2.photos.attach(io: spd2, filename: 'annie.png', content_type: 'image/png')
doctor2.photos.attach(io: spd2bis, filename: 'wilkes.jpg', content_type: 'image/jpg')

puts"Doctors created"

#   Création du service désinfection
priest_id = Category.find_by_name("Désinfection").id
# Père Karras
priest1 = Specialist.create(firstname: "Père", lastname: "Karras", profession: "Exorciste",
description: "Bien que d'apparence rustique et un peu austère, le Père Karras saura vous surprendre par sa coolitude extrème et son flegme rassurant.
Véritable légende vivante, le Père Karras affiche un tableau de chasse impressionnant : Pazuzu, Bélial, Dark Vador, Maître Gims...Souvent copié, jamais égalé. Il est le roi de l'Exorcisme vintage.Bon à savoir : A tendance à se défenestrer pour conclure ses rituels. Pas d'inquiétude, c'est sa manière à lui de fêter ses victoires...", category_id: priest_id)
priest1.photos.attach(io: spp1, filename: 'pere.png', content_type: 'image/png')
priest1.photos.attach(io: spp1bis, filename: 'karras.jpg', content_type: 'image/jpg')
puts"..."

#Papa Emeritus
priest2 = Specialist.create(firstname: "Papa", lastname: "Emeritus", profession: "Exorciste",
description: "Sa grande connaissance des rituels sataniques et du bestiaire démoniaque font de lui un Exorciste peu académique, mais d'une efficacité redoutable. Affichant un look glam et décomplexé, Papa Emeritus, jamais à cour de punchlines savoureuses, allie à la fois puissance et grâce pour un Exorcisme Premium au taux de réussite impressionnant.</p>
 Bon à savoir :A parfois tendance à sympathiser avec l'entité démoniaque... surprenant mais toujours hautement festif.", category_id: priest_id)
priest2.photos.attach(io: spp2, filename: 'papa.png', content_type: 'image/png')
priest2.photos.attach(io: spp2bis, filename: 'emeritus.jpg', content_type: 'image/jpg')

puts"Priests created"