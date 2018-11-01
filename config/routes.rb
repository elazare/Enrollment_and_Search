Rails.application.routes.draw do
  get 'search/new'
  post 'search/new'
  post 'search/create/:search_id', to: 'search#create'
  post 'search/show', to: 'search#show'
  get 'user/index'
  get 'sessions/new'
  root 'static_pages#home'
  get '/signup', to: 'users#new'
  get 'static_pages/home'
  get 'static_pages/search'
  post '/signup',  to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/ajax', to: 'search#search'
  resources :courses
  resources :subjects
  resources :instructors
  resources :users
  resources :search
end
