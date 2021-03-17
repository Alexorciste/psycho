# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

law_image_path = Rails.root.join('app', 'assets', 'images', 'devil.jpg')
medical_image_path = Rails.root.join('app', 'assets', 'images', 'west.jpg')
exorcist_image_path = Rails.root.join('app', 'assets', 'images', 'exorc.png')
Category.destroy_all
Category.create(name: "Service Juridique", description: "Vous avez signé un pacte avec une entité Démoniaque mais vous n'êtes plus certain de vouloir aller au bout ? Pas d'inquiétude, notre service juridique vous accompagne dans toutes vos démarches.").photo.attach(io: File.open(law_image_path), filename: 'devil.png', content_type: 'image/png')
Category.create(name: "Expertise médicale", description: "Possession Démoniaque ou léger accès schizophrénique, véritable Poltergeist ou Délirium tremens bénin ? Notre équipe médicale est là pour vous aider à y voir clair.").photo.attach(io: File.open(medical_image_path), filename: 'west.jpg', content_type: 'image/jpg')
Category.create(name: "Désinfection", description: "Une entité Maléfique a pris possession de l'un de vos proches, un ectoplasme récalcitrant vous mène la vie dure ? N'hésitez plus et faites appel à notre équipe d'experts !").photo.attach(io: File.open(exorcist_image_path), filename: 'exorc.jpg', content_type: 'image/png')
puts"Category created"


