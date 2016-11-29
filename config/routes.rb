Rails.application.routes.draw do

  root to: 'pages#search'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :massages, only: [:show] do
    resources :appointments, only: [:create]
  end
  resources :appointments, only:[:show]
end
