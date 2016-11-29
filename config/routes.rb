Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "massages#index"

  resources :users, only: [:show, :new, :create, :edit, :update, :destroy]

  resources :massages, only: [:show] do
    resources :appointments, only: [:create]
  end
  resources :appointments, only:[:show]
end
