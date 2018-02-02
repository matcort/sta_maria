# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
Administrador.create(nombre:"Matias", rut:"123456", telefono:"1234567",mail:"matias@gmail.com", password:"123456", password_confirmation: "123456")
#Arrendatario.create(nombre:"Sebastian", rut:"1234567", telefono:"1234567",mail:"sebastian@gmail.com", password:"123456", password_confirmation: "123456")
estado=nil

21.times do |i|
    if i%2==0
        estado=true
    end
    Local.create(direccion:"Santa María 347", numero: i+2, estadoArriendo:true)
end

10.times do
name= Faker::Name.name
run= Faker::Number.number(9)
fono=Faker::Number.number(7)
email=Faker::Internet.email
Arrendatario.create(nombre: name, rut: run, telefono: fono, mail: email, password:"123456", password_confirmation: "123456")
end

#[8,9,10,11,12,13,14,15,16].each do |n|
    
#   Contrato.create(fechaInicio: Faker::Date.forward(23), fechaFin:Faker::Date.forward(23), montoArriendo:Faker::Number.number(6), documento: nil, estado: true, arrendatario_id:n, administrador_id:1, local_id: n)
#end    
#Local.create(direccion:"Santa María 363", numero:)

Contrato.create(fechaInicio: Faker::Date.forward(23), fechaFin:Faker::Date.forward(23), montoArriendo:Faker::Number.number(6), documento: nil, estado: true, arrendatario_id:16, administrador_id:1, local_id: 211)