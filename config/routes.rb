Gscms::Application.routes.draw do
  
  devise_for :users, :skip => [:sessions, :passwords]
  
  as :user do
    # sessions routes
    get         "/admin/login"    => "devise/sessions#new",             :as => :new_user_session
    post        "/admin/login"    => "devise/sessions#create",          :as => :user_session
    delete      "/admin/logout"   => "devise/sessions#destroy",         :as => :destroy_user_session

    # passwords routes
    get         "password/forgot" => "devise/passwords#new",     :as => :new_user_password
    post        "password/forgot" => "devise/passwords#create",  :as => :user_password
    get         "password/reset"  => "devise/passwords#edit",    :as => :edit_user_password
    put         "password/forgot" => "devise/passwords#update"
  end
  
  namespace :admin do
    resources :users,   :except => [:show]
    resources :menus,   :except => [:show] do
       post :page_sort, :on => :collection
    end
    
    get "settings/homepage"       => "settings#homepage",      :as => :settings
    post "settings/homepage-save" => "settings#homepage_save", :as => :homepage_save
     
    resources :pages do
       get   "sitemap",       :on => :collection, :as => :sitemap
       get   "clear_cache",   :on => :collection, :as => :clear_cache
       member do
         put  :quick_update
         get  :quick_edit
         post :page_update
       end
       #post "show", :on => :member
    end
  end

  get ":permalink" => "pages#show", :as => :permalink
  root :to => "pages#index"
  
   # Note: This route will make all actions in every controller accessible via GET requests.
   # match ':controller(/:action(/:id(.:format)))'
end
