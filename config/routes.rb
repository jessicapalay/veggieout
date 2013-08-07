Veggieout::Application.routes.draw do
  get "vegetable/create"

  get "welcome/index"

  get "welcome/about"
  
  devise_for :users

  resources :users, only: [:show] # create a route for users#show

  resources :vegetables, only: [:create]

  resources :fruits, only: [:create]

  resources :activities, only: [:create]

  resources :relaxations, only: [:create]

  resources :sleeps, only: [:create]

  root to: 'welcome#index'
end
