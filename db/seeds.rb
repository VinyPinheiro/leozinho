# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(email: 'admin@admin.com', password: '123456', password_confirmation: '123456')
user = User.create(email: 'admin1@admin.com', password: '123456', password_confirmation: '123456')
Product.create(name:'Cadeira', amount: 50)
Product.create(name:'mesa', amount: 50)
# Allocation.create(allocation_date:'2016-06-06',return_date:'2017-06-06',user: user)