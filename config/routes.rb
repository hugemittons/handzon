Rails.application.routes.draw do
resources :massages
devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "massages#index"

resources :users, only: [:show, :new, :create, :edit, :update, :destroy]

end
