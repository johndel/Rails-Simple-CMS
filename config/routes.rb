Gscms::Application.routes.draw do
  devise_for :users do
      get "/admin" => "devise/sessions#new"
  end

  scope "/admin" do
    resources :menus, :pages #, :except => [:show]
  end
  
  #resources :menus, :pages, :only => [:show]
  
  root :to => "pages#index" #This will change
  
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
