Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  # get 'recipes/index'
  # get 'recipes/edit'
  

  get 'show/:id', to: 'home#show', as: 'show'
  get 'list', to: 'home#list', as: 'list'
  get 'category/:id', to: 'home#category', as: 'category'
  
  post '/subscribers' => 'subscriber#create_subscriber_info'
  # get '/subscribers/:id', to: 'subscriber#new_recipe_mailers'

  root 'home#index'
  resources :recipes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
