Rails.application.routes.draw do
  devise_for :users           # no need to set up individual routes if User is the name of model

  #get   '/login',           to: 'login#'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root  'home#home'# works
  #get   '/locations', to: 'locations#index' #render locations view - works
  get   '/about',           to: 'pages#about'
  resources :articles
  resources :photos, only: [:index]        # changed to resources :photos if not nesting
  #resources(:photos, {only: [:index]})
  #resources([:photos, {only: [:index]}])
  #get   '/photos',        to: 'photos#index' # change to 'get' if we want to nest route

  resources :locations do
    resources :photos
  end
end

