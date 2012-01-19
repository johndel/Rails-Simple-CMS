# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).


User.create(email: "example@example.com", password: "easypassword")
menu = Menu.create(name: "default")
page = Page.create(name: "Demo Homepage", permalink: "homepage", active: true, content: '<h1>Hi I am the demo homepage!</h1><p>Go to <a href="/admin/login">Admin Panel</a>, login and change me. Thank you for using me!</p>')
menu.pages << page
Setting.create(meta_key: "homepage", meta_value: page.id)

