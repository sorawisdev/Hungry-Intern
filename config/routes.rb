Rails.application.routes.draw do
  root 'home#index'

  get 'show/:id', to: 'home#show'
  get 'list', to: 'home#list'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
