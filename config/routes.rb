Gscms::Application.routes.draw do
  devise_for :users

  resources :menus, :pages
  
  root :to => "pages#index" #This will change
  
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
