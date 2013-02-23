Gscms::Application.routes.draw do

  devise_for :admins, path: "admin", path_names: {sign_in: "login", sign_out: "logout"}


  namespace :admin do
    resources :admins,  except: [:show]
    resources :uploads, except: [:show, :edit, :update]
    resources :menus,   except: [:show] do
       post :page_sort, on: :collection
    end

    get "settings/homepage",       to: "settings#homepage",      as: :settings
    post "settings/homepage-save", to:  "settings#homepage_save", as: :homepage_save

    resources :pages do
       get   "sitemap",       on: :collection, as: :sitemap
       get   "clear_cache",   on: :collection, as: :clear_cache
    end
  end

  get ":permalink", to: "pages#show", as: :permalink
  root to: "pages#index"

   # Note: This route will make all actions in every controller accessible via GET requests.
   # match ':controller(/:action(/:id(.:format)))'
end
