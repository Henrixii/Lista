# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create!(name: 'breakfast')
Category.create!(name: 'lunch')
Category.create!(name: 'dinner')

Product.create!(name: 'pão_com_ovo', description: 'O melhor pão com ovo da região', price: 20 , category_id: 1 )
Product.create!(name: 'cuzcuz', description: 'melhor acompanhado com cafe', price: 17, category_id: 1)
Product.create!(name: 'biscoito_creamcrack', description: 'pra lembrar dos tempos do fundamental', price: 5, category_id: 1)
Product.create!(name: 'miojão', description: 'È nissin!', price: 13, category_id: 2)
Product.create!(name: 'P.F', description:'O famoso e barato prato feito', price: 10, category_id: 2)
Product.create!(name: 'bife do olhão', description:'aquele ovão gostoso', price: 12, category_id: 2)
Product.create!(name: 'espetinho', description: 'essa carne não é de origens duvidosas', price: 9, category_id: 2)
Product.create!(name: 'sopa', description:'mais gostoso no frio', price: 18, category_id: 3)
Product.create!(name: 'pizza', description:'temos o melhor chef da Itália', price: 20, category_id: 3)
Product.create!(name: 'pastel', description:'ganhe um caldo de cana de brinde', price: 8, category_id: 3)

#admis
User.create!(name: "luiz", email:"luiz@luiz", password:"12345678", admin: true)
User.create!(name: "Kayran", email:"Kayran@lKayran", password:"Kayran123", admin: true)
#normal_users
User.create!(name: "jubirinha", email:"jubirinha@jubirinha", password:"jubirinha123", admin: false)
User.create!(name: "Jorge", email:"Jorge@Jorge", password:"Jorge123", admin: false)

#favoritos
Favorite.create!(user_id: 1, product_id: 4)
Favorite.create!(user_id: 4, product_id: 1)

User.find_by(id:1).photo.attach(io: File.open('./public/user.jpeg'), filename: 'user.jpeg')
User.find_by(id:2).photo.attach(io: File.open('./public/user.jpeg'), filename: 'user.jpeg')
User.find_by(id:3).photo.attach(io: File.open('./public/user.jpeg'), filename: 'user.jpeg')
User.find_by(id:4).photo.attach(io: File.open('./public/user.jpeg'), filename: 'user.jpeg')

Product.find_by(id:1).file.attach(io:File.open('./public/Pão_com_ovo.txt'), filename: 'Pão_com_ovo.txt')
Product.find_by(id:2).file.attach(io:File.open('./public/cuzcuz.txt'), filename: 'cuzcuz.txt')
Product.find_by(id:3).file.attach(io:File.open('./public/biscoito_creamcrack.txt'), filename: 'biscoito_creamcrack.txt')
Product.find_by(id:4).file.attach(io:File.open('./public/miojão.txt'), filename: 'miojão.txt')
Product.find_by(id:5).file.attach(io:File.open('./public/P.F.txt'), filename: 'P.F.txt')
Product.find_by(id:6).file.attach(io:File.open('./public/bife_do_olhão.txt'), filename: 'bife do olhão.txt')
Product.find_by(id:7).file.attach(io:File.open('./public/espetinho.txt'), filename: 'espetinho.txt')
Product.find_by(id:8).file.attach(io:File.open('./public/sopa.txt'), filename: 'sopa.txt')
Product.find_by(id:9).file.attach(io:File.open('./public/pizza.txt'), filename: 'pizza.txt')
Product.find_by(id:10).file.attach(io:File.open('./public/pastel.txt'), filename: 'pastel.txt')