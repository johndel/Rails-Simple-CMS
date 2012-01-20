#require "bundler/capistrano"
load "deploy/assets"

set :application, "demo-gscms"
set :location, "78.47.39.124:6969"
set :repository, "file:///home/democms/repository"
set :local_repository, "file://."


set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, location                          # Your HTTP server, Apache/etc
role :app, location                          # This may be the same as your `Web` server
role :db,  location, :primary => true # This is where Rails migrations will run

set :user, "democms"
set :use_sudo, false
set :deploy_to, "/home/democms/#{application}"

set :keep_releases, 5
after "deploy:update", "deploy:cleanup" 
# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
    run "#{try_sudo} chmod -R 777 #{current_path}/public"
    run "#{try_sudo} chmod -R 777 #{current_path}/tmp"    
    # run "#{try_sudo} chmod -R 777 #{current_path}/log"
  end
  
  task :symlink_shared do 
    run "rm -rf #{release_path}/config/database.yml"
    run "ln -nfs #{shared_path}/system/database.yml #{release_path}/config/database.yml"
    run "ln -nfs #{shared_path}/system/production.log #{release_path}/log/production.log"
  end

end


after 'deploy:update_code', 'deploy:symlink_shared'
