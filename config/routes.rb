Rails.application.routes.draw do
  root 'static_pages#home'
  get '/signup', to: 'users#new'
  resources :coursubs
  resources :courses
  resources :subjects
  resources :instructors
  resources :users
end
