Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'locations#index' #render locations view
  resources :locations

  get 'about', to: 'pages#about'
  resources :articles

  get '/photos/index'
end

#https://www.theodinproject.com/courses/ruby-on-rails/lessons/routing
