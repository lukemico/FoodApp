Rails.application.routes.draw do

  get 'login/new'

  get 'login/show'

  get 'login/index'

  get 'login/update'

  get 'comment/new'

  get 'comment/show'

  get 'comment/index'

  get 'comment/update'

  get 'blog/index'

  get 'home/index'

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
resources :guides
resources :venues
resources :blog
resources :comments
resources :about
resources :users
resources :login
resources :resources

end
