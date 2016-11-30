Rails.application.routes.draw do

  root to: 'pages#search'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'dashboard', to: 'pages#dashboard'

  resources :massages, only: [:show, :index]
  post "appointments", to: "appointments#create", as: "massage_appointments"
  # => PATH                   VERB     URI PATTERNS                 CONTROLLER
  # => massage_appointments   POST    /appointments(.:format)       appointments#create

  resources :appointments, only:[:show]
end
