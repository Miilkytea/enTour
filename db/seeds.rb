# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Space.destroy_all
City.destroy_all
Band.destroy_all

City.create(
     name: "Los Angeles",
    state: "CA"

)

Space.create(
     name: "The Smell",
  address: "247 S Main St, Los Angeles, CA 90013",
    email: "",
  website: "",
  city_id: 1,
 latitude: 34.050160, 
longitude: -118.245335
)

Space.create(
     name: "Pehrspace",
  address: "325 Glendale Blvd, Los Angeles, CA 90026",
    email: "",
  website: "",
  city_id: 1,
 latitude: 34.066450, 
longitude: -118.260472
)

Band.create(
     name: "Lala Lala",
    email: "user@user.com", 
 password: "test", 
 password_confirmation: "test"

)

