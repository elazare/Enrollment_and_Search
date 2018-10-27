Rails.application.routes.draw do
  get 'search/course:string'
  get 'search/subject:string'
  get 'search/usesubj:boolean'
  get 'user/index'
  get 'sessions/new'
  root 'static_pages#home'
  get '/signup', to: 'users#new'
  get 'static_pages/home'
  get 'static_pages/search'
  post '/signup',  to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/search', to: 'static_pages#search'
  get '/results', to: 'static_pages#results'
  resources :courses
  resources :subjects
  resources :instructors
  resources :users
end
