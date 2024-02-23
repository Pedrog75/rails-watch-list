# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

List.destroy_all
Movie.destroy_all
Bookmark.destroy_all

5.times do
  List.create(
    name: Faker::Name.name
  )
end


5.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Quotes::Chiquito.joke,
    poster_url: Faker::Avatar.image,
    rating: 2
  )
end

5.times do
  Bookmark.create(
    comment: Faker::Quotes::Chiquito.sentence
  )
end
