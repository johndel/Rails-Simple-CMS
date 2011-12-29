# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: "example@example.com", password: "easy_password")
Setting.create(meta_key: "homepage")
#Page.create(name: 404, title: "Error Page 404", permalink: "404", )
