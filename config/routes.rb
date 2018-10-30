Rails.application.routes.draw do
  get 'searches/show'
  get 'searches/new'
  get 'searches/create'
  get 'search/create'
  post 'searches/show'
  post 'searches/create'
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
  resources :courses
  resources :subjects
  resources :instructors
  resources :users
  resources :search
end
