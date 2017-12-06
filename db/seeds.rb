# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Administrador.create(nombre:"Matias", rut:"123456", telefono:"1234567",mail:"matias@gmail.com", password:"123456", password_confirmation: "123456")


Arrendatario.create(nombre:"Sebastian", rut:"1234567", telefono:"1234567",mail:"sebastian@gmail.com", password:"123456", password_confirmation: "123456")