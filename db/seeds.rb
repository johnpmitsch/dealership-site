# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

directory = File.join(Rails.root, "app/assets/images/")
featured = File.open(File.join(directory, '98_buick1.jpg'))
image_one = File.open(File.join(directory, '98_buick2.jpg'))
image_two = File.open(File.join(directory, '98_buick_lesabre.jpeg'))
filler_text  = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

7.times do |_|
  car = Car.create!( year: 1997, make: "Buick", model: "lesabre",
               description: filler_text, price: 4999, featured: false
             )

  car.featured_image = featured
  car.image = [image_one, image_two]
  car.save!
end

3.times do |_|
  car = Car.create!( year: 1997, make: "Buick", model: "lesabre",
               description: filler_text, price: 4999, featured: true
             )

  car.featured_image = featured
  car.image = [image_one, image_two]
  car.save!
end
