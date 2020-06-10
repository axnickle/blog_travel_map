Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root  'home#home' # works
  get   '/locations/index', to: 'locations#index' #render locations view - works
  resources :locations
  get   '/about',           to: 'pages#about'
  resources :articles

  get   '/photos/index',     to: 'photos#index'
end


  #index - GET, POST, PATCH, DELETE - HTTP Verbs
