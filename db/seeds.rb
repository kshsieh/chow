# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

profile_image_urls = [
  'http://www.animalhavenshelter.org/images/content/pagebuilder/Bruce_Willie.jpg',
  'http://www.animalhavenshelter.org/images/content/pagebuilder/Preeda.jpg',
  'http://www.animalhavenshelter.org/images/content/pagebuilder/aloha_tongue.jpg',
  'http://www.animalhavenshelter.org/images/content/pagebuilder/chester_sophie.jpg'
]

4.times do |dog|
  Dog.create!(
    name: Faker::Name.name,
    description: Faker::Lorem.paragraph(2),
    profile_image_url: profile_image_urls[rand(0...4)]   
  )
end
