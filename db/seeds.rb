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

10.times do |_|
  car = Car.create!( year: 1997, make: "Buick", model: "lesabre",
               description: "reliable", price: 4999, featured: true
             )

  car.featured_image = featured
  car.image = [image_one, image_two]
  car.save!
end
