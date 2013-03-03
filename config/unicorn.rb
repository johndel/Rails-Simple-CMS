# config/unicorn.rb
if ENV["RAILS_ENV"] == "development"
  worker_processes 1
else
  worker_processes 3
end

timeout 30


