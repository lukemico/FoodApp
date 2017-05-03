Rails.application.routes.draw do

  get 'login/new'

  get 'login/show'

  get 'login/index'

  get 'login/update'

  root to: 'home#index'

  # get 'blog/index'
  #
  # get 'blog/show'
  #
  # get 'blog/update'
  #
  # root to: 'pages#index'
  #
  # get 'home/index'

resources :home
resources :venue
resources :blog
resources :about
resources :comments
resources :users
resources :login

end
