Rails.application.routes.draw do

root to: 'home#index'

resources :home
resources :venue
get "/venue/:id/new" => 'venues#new'
get "/venue/:id/update" => 'venues#update'
get "/venue/:id/delete" => 'venues#delete'
resources :blog
get "/blog/:id/new" => 'comments#new'
get "/blog/:id/update" => 'comments#update'
get "/blog/:id/delete" => 'comments#delete'
resources :comments
resources :users
resources :login

end

# get 'login/new'

# get 'login/show'

# get 'login/index'
#
# get 'login/update'

# get 'blog/index'
#
# get 'blog/show'
#
# get 'blog/update'
#
# root to: 'pages#index'
#
# get 'home/index'
