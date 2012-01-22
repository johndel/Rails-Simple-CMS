# Simple CMS in Rails

GreekSolution Simple CMS in Rails.

### Demo
You can login and check the [CMS](http://cms.johndel.gr/admin/login/)<br />
Email: example@example.com <br />
Password: testme

### System Requirements
Rails version: 3.2 <br/>
Ruby version: 1.9.3

### Description
Simple CMS is a nice project to be used as a base for more complex projects. I used as much as I could the best practices as I know and understand them and it is also in HTML5. 

I've build it for creating some simple sites and for helping some friends learn / mess around with Ruby on Rails.

I also tried to keep it as simple as possible and I'll add more functionality in the future, probably using Rails Engines. It's also a nice project for beginners to explore and learn some basic things for Rails. If you have ideas, feedback or you need help, send me an email at [istoselidas@gmail.com] (mailto:istoselidas@gmail.com).   

### Installation - Absolute Beginner's Guide
Follow the steps below to install and use it:

1. `git clone git@github.com:johndel/Rails-Simple-CMS.git`
2. Run `bundle install` to install the necessary gems
3. Create a database.yml or change the config/database.yml.example to config/database.yml file and fill in the credentials (beware of the socket! It depends on OS, I am using ubuntu so this is what it fits for me)
4. Open the db/seeds.rb file and change the User.create to fit your needs (set an email and password for login to the administration panel)
5. Type `rake db:create:all` to create your databases
6. Type `rake db:schema:load` to create database schema
7. Type `rake db:seed` to load some basic data
8. Run `rails s` or `passenger start` (install the passenger gem) to begin server
9. Go to localhost:3000 and check if everything is working great! Your site is served :)
10. For admin login, go to localhost:3000/admin/login and type your credentials

You can also load the schema from mysql (like the old days if you missed them). I've included gscms.sql file in the root path of the app, just type:
**mysql -u username -ppassword -h localhost database_name < gscms.sql**  
or 
use any other shiny GUI MySQL interface - database interface to import it. Credentials of the file:
<br />
Email:    example@example.com<br />
Password: testme

### Production
For production, be sure to write `rake assets:precompile` first or if you are deploying with capistrano, let `load "deploy/assets"` in the config/deploy.rb . 

# Some basic info about using it 
*(Pretty boring, just mess around with the project! Only for geeks who read the manual first...)* 
### Pages
I've used mercury editor (**AWESOME** editor for people who just want something shiny and fast and don't know HTML) for editing content. For adding images just drag and drop them. 

You can also edit html with two ways, either from the edit preferences, using content or from mercury. 

Also I've added a simple count for SEO awareness in the edit-preferences (for the content it doesn't count the white spaces / line breaks and html tags as words / characters).

Create Sitemap just generates a sitemap.xml inside the public folder. I am also using page caching which is sweeped away on save / destroy pages and in sorting menus.  

### Menus
Currently I've added only one menu, even though you can hack around and add as many as you want. Every menu has a page_position, you can sort pages with drag and drop and edit the name of the menu (if you want to display it somewhere).

### Users
You can edit / delete users, there aren't any role management. I tried to keep it simple, remember?

### Settings
Currently you can only change your displayed homepage. I'll add more functionality in the future. 

### Frontend
For creating your layout, just hack around the **app/views/layouts/pages.html.erb** layout and **app/views/pages/index.html.erb** (it is for the index page) and  **views/pages/show.html.erb** (it is for all the rest pages). 

As you probably have guested, you can have different views between index page and all the other pages.

For adding / editing images, javascripts and css, go to **app/assets/** and add them under the folder pages.

### Cache 
You can clear cache any time by visiting page **http://yourdomain.com/admin/pages/clear_cache** (you need to be logged in as administrator).

### Edit to fit your needs / Developer's guide
The database has a general purpose table ( [EAV](http://en.wikipedia.org/wiki/Entity%E2%80%93attribute%E2%80%93value_model) ) with the name **settings**. I've created some projects which have a sidebar included and I've added it here. You can store anything you feel good in here and fits in your project.

**Menus** and **pages** is a typical many-to-many database relationship with the association table named **page_menu_mappings**. It also has a typical CRUD users table and a mercury_image for storing images for mercury editor. That's it! For now...

I've added mercury-gem under vendor/mercury-gem because I've added some things like authentication and a custom exit button. I'll keep it updated though in the future releases.

Pages should have at least a name and a clean url to be saved. Menus should have at least a name. 

### Future simple implementations
1. Write more interaction tests
2. Mercury - on save button, inform the user
3. Better workflow for page creation
4. Add trackback and pingback
5. Inline editing for some elements
6. Fix page_position to be inserted automatically (a small bug)
7. Breadcrumb rescue on Backend, sometimes it brokes, I have to find out when

### Future ideas (sorted with what I think best / most important to add)
1. Photo Gallery / Video Gallery
2. MarkitUp editor for some more experienced users
3. Create custom layout / modules with a nice drag and drop interface and transfer content in every area of the project you like
4. ... Your ideas here!!! Send me an [email](mailto:istoselidas@gmail.com) :)

### Tests
I've used the awesome setup of Ryan Bates ([How I test](http://railscasts.com/episodes/275-how-i-test)). Just type `guard` and hit enter to run the tests. Some tests maybe failing but I'll fix them in the future.
If you are on a OSX you may need to customize it a bit to run the tests, just watch Ryan. 

_Feel free to use it as you like. I'd love to hear your comments about. Thank you!_


