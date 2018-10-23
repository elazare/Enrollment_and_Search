Rails.application.routes.draw do
  root 'static_pages#home'
  get '/signup', to: 'users#new'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  resources :coursubs
  resources :courses
  resources :subjects
  resources :instructors
  resources :users
end
