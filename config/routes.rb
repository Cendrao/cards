Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cards, only: [:show, :create, :new]

  get '/', to: 'home#index'
end
