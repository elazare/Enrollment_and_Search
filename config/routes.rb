Rails.application.routes.draw do
  resources :coursubs
  resources :courses
  resources :subjects
  resources :instructors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
