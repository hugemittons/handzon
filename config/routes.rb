Rails.application.routes.draw do
  get 'appointments/show'

  get 'appointments/new'

  get 'appointments/create'

  get 'appointments/destroy'

resources :massages
devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "massages#index"

resources :users, only: [:show, :new, :create, :edit, :update, :destroy]
resources :appointments, only: [:new, :create, :show, :destroy]

end
