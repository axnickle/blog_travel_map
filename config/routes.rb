Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'locations#index' #render locations view
  resources :locations
  #index - GET, POST, PATCH, DELETE - HTTP Verbs
  get 'about', to: 'pages#about'
  resources :articles

  get '/photos/index'
end
