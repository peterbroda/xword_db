XwordDb::Application.routes.draw do
  get "editors/new"

#  get "constructors/new"

  resources :puzzles
  resources :constructors
  resources :editors
  resources :sources
  resources :words

  get '/puzzles/:id',		to: 'puzzles#show', as: 'puzzle'
  get '/constructors/:id', 	to: 'constructors#show', as: 'constructor'
  get '/editors/:id', 		to: 'editors#show', as: 'editor'
  get '/sources/:id',		to: 'sources#show', as: 'source'
  get '/words/:id',		to: 'words#show', as: 'word'

  root to: 'static_pages#home'

  match '/articles',	to: 'cross_training#articles'
  match '/resources',	to: 'cross_training#resources'
  match '/search',	to: 'cross_examination#search'
  match '/display_puzzle',	to: 'cross_examination#display'

  match '/about',	to: 'static_pages#about'
  match '/help',	to: 'static_pages#help'
  match '/contact',	to: 'static_pages#contact'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
