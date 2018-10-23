Rails.application.routes.draw do
  get 'user/index'
  get 'sessions/new'
  root 'static_pages#home'
  get '/signup', to: 'users#new'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  post '/signup',  to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :courses
  resources :subjects
  resources :instructors
  resources :users
end
