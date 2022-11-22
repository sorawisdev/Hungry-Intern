Rails.application.routes.draw do
  # get 'recipes/index'
  # get 'recipes/edit'
  

  get 'show/:id', to: 'home#show', as: 'show'
  get 'list', to: 'home#list', as: 'list'
  get 'category/:id', to: 'home#category', as: 'category'

  root 'home#index'
  resources :recipes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
