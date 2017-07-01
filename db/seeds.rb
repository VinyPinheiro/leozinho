# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_1 = User.create(email: 'admin@admin.com', password: '123456', password_confirmation: '123456')
user_2 = User.create(email: 'admin1@admin.com', password: '123456', password_confirmation: '123456')
product_1 = Product.create(name:'Cadeira', amount: 50)
product_2 = Product.create(name:'mesa', amount: 35)
client = Client.create(name:'Jonas', address: 'Rua das flores', phone: '61 3398-9874', cpf: '55631258900')
allocation = Allocation.new(allocation_date:'2016-06-06', return_date:'2017-06-06', client: client)
allocation.product_allocation.build(amount: 10, product: product_1)
allocation.product_allocation.build(amount: 15, product: product_2)
allocation.save