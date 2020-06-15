Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root  'home#home' # works
  get   '/locations/index', to: 'locations#index' #render locations view - works
  get   '/about',           to: 'pages#about'
  resources :articles
  #resources :photos        # changed to resources :photos if not nesting
  get   '/photos/index',    to: 'photos#index' # change to 'get' if we want to nest route

  resources :locations do
    resources :photos
  end
end


  #index - GET, POST, PATCH, DELETE - HTTP Verbs
