Veggieout::Application.routes.draw do
  get "welcome/index"

  get "welcome/about"
  
  devise_for :users

  resources :users, only: [:show] # create a route for users#show

  root to: 'welcome#index'
end
