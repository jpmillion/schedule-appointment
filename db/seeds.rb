# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Coach.destroy_all

names = ['Christy Schumm', 'Natalia Stanton Jr.', 'Nola Murazik V', "Elyssa O'Kon", 'Dr. Geovany Keebler']

names.each { |name| Coach.create(name: name) }