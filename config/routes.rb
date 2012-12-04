Gscms::Application.routes.draw do
  
  devise_for :users, path: "admin", path_names: {sign_in: "login", sign_out: "logout"}

  
  namespace :admin do
    resources :users,   :except => [:show]
    resources :uploads, :except => [:show, :edit, :update]
    resources :menus,   :except => [:show] do
       post :page_sort, :on => :collection
    end
    
    get "settings/homepage"       => "settings#homepage",      :as => :settings
    post "settings/homepage-save" => "settings#homepage_save", :as => :homepage_save
     
    resources :pages do
       get   "sitemap",       :on => :collection, :as => :sitemap
       get   "clear_cache",   :on => :collection, :as => :clear_cache
    end
  end

  get ":permalink" => "pages#show", :as => :permalink
  root :to => "pages#index"
  
   # Note: This route will make all actions in every controller accessible via GET requests.
   # match ':controller(/:action(/:id(.:format)))'
end
