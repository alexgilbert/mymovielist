Rails.application.routes.draw do
  root 'static_pages#home'
  
  get '/contact' => 'static_pages#contact'
  get '/about' => 'static_pages#about'
  get '/home' => 'static_pages#home'
  get '/help' => 'static_pages#help'	

  resources :users do
    member do
      get :following, :followers
    end
  end
  match '/signup',	to: 'users#new',	via: 'get'
  
  resources :sessions, only: [:new, :create, :destroy]
  match '/signin',	to: 'sessions#new',	via: 'get'
  match '/signout',	to: 'sessions#destroy',	via: 'delete'

  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  delete 'relationships'  => 'relationships#destroy'

  resources :movies, only: [:index, :show]
  post '/own' => 'movies#own'
  post '/unown' => 'movies#unown'
  get '/my_movies' => 'movies#owned'
  get '/now_playing_movies' => 'movies#now_playing'
  get '/upcoming_movies' => 'movies#upcoming'
  get '/popular_movies' => 'movies#popular'
  get '/top_rated_movies' => 'movies#top_rated'  

  resources :lists
  post '/remove_from_list' => 'lists#remove_movie'
  post '/add_to_list' => 'lists#add_movie'
  post '/shares' => 'lists#share'
  resources :tv, only: [:index, :show]
  resources :collections, only: [:index, :show]
  resources :person, only: [:index, :show]
  resources :company, only: [:index, :show]
  resources :genres, only: [:index, :show]

  post 'search' => "search#index"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
