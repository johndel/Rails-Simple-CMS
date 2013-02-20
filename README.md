# Simple CMS in Rails

GreekSolution Simple CMS in Rails.

### Demo
You can login and check the [CMS](http://cms.johndel.gr/admin/login/)<br />
Email: example@example.com <br />
Password: testme

### System Requirements
Rails version: 3.2.11<br/>
Ruby version: 1.9.3

### Description
Simple CMS is a nice project to be used as a base for more complex projects. I used as much as I could the best practices as I know and understand them and it is also in HTML5.

I've build it for creating some simple sites and for helping some friends learn / mess around with Ruby on Rails.

I also tried to keep it as simple as possible and I'll add more functionality in the future, probably using Rails Engines. It's also a nice project for beginners to explore and learn some basic things for Rails. If you have ideas, feedback or you need help, send me an email at [istoselidas@gmail.com] (mailto:istoselidas@gmail.com).

### Installation - Absolute Beginner's Guide
Follow the steps below to install and use it:

1. `git clone https://github.com/johndel/Rails-Simple-CMS.git`
2. Run `bundle install` to install the necessary gems
3. Create a database.yml or change the config/database.yml.example to config/database.yml file and fill in the credentials (beware of the socket! It depends on OS, I am using ubuntu so this is what it fits for me)
4. Open the db/seeds.rb file and change the User.create to fit your needs (set an email and password for login to the administration panel)
5. Type `rake db:create:all` to create your databases
6. Type `rake db:setup` to create database schema and load seed (if you loaded gscms.sql it already has a user example)
7. Run `rails s` or `passenger start` (install the passenger gem) to begin server
8. Go to localhost:3000 and check if everything is working great! Your site is served :)
9. For admin login, go to localhost:3000/admin/login and type your credentials

You can also load the schema from mysql (like the old days if you missed them). I've included gscms.sql file in the root path of the app, just type:
**mysql -u username -ppassword -h localhost database_name < gscms.sql**
or
use any other shiny GUI MySQL interface - database interface to import it. Credentials of the file:
<br />
Email:    example@example.com<br />
Password: testme

### Production
For production, be sure to write `rake assets:precompile` first or if you are deploying with capistrano, let `load "deploy/assets"` in the config/deploy.rb .

Check [Wiki Pages](https://github.com/johndel/Rails-Simple-CMS/wiki) for more info.


_Feel free to use it as you like. I'd love to hear your comments about. Thank you!_
