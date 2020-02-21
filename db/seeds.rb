require 'open-uri'
require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning the database...'

Dose.destroy_all
Ingredient.destroy_all

puts 'Database cleaned!'
puts 'Adding ingredients...'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
file = open(url).read
result = JSON.parse(file)

result["drinks"].sort_by { |drink| drink["strIngredient1"] }.each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

puts 'Success! Ingredients added.'
