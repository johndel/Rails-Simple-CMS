Gscms::Application.routes.draw do
  
  match '/editor(/*requested_uri)' => "auth_mercury#edit", :as => :mercury_editor
  Mercury::Engine.routes
  devise_for :users, :skip => [:sessions, :passwords] do
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
    resources :users,         :except => [:show]
    resources :menus,         :except => [:show] do
       collection do 
          post :page_sort
       end
    end  
    resources :pages do
       get "sitemap",         :on => :collection, :as => :sitemap
       member { post :mercury_update }
       #post "show", :on => :member
    end
  end

  get ":permalink" => "pages#show"
  root :to => "pages#index"
  
   # Note: This route will make all actions in every controller accessible via GET requests.
   # match ':controller(/:action(/:id(.:format)))'
end
