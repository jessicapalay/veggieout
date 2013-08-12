Veggieout::Application.routes.draw do
  get "vegetable/create"

  get "fruit/create"

  get "activiy/create"

  get "relaxation/create"

  get "sleep/create"

  get "welcome/index"

  get "welcome/about"
  
  devise_for :users

  resources :users, only: [:show] do
    get :timeline, on: :member # /users/:id/timeline
    get :data, on: :member
    # get :timeline, on: :collection # /users/timeline
  end # create a route for users#show

  resources :vegetables, only: [:create]

  resources :fruits, only: [:create]

  resources :activities, only: [:create]

  resources :relaxations, only: [:create]

  resources :sleeps, only: [:create]

  root to: 'welcome#index'
end
