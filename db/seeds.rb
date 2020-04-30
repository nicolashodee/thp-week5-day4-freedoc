# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

50.times do
  doctor = Doctor.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: Faker::Superhero.name , zip_code: Faker::Code.npi)
  doctor.save
  puts "Un docteur a ete cree, youpi."
end

50.times do
    patient = Patient.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
    patient.save
    puts "Un patient a ete cree, wahou."
  end

20.times do
    appointment = Appointment.new(date: Faker::Date.in_date_period(year: 2020, month: 5), doctor: Doctor.all.sample, patient: Patient.all.sample)
    appointment.save
    puts "Un rendez-vous a été créé ! On est vraiment trop fort :D"
end