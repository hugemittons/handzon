Rails.application.routes.draw do
  get 'massages/index'

  get 'massages/show'

  get 'massages/create'

  get 'massages/edit'

  get 'massages/update'

  get 'massages/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
