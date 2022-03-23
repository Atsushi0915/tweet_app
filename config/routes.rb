Rails.application.routes.draw do

  get  '/',                 to: 'heme#top'
  get  'about',             to: 'heme#about'

  post 'likes/:post_id/create',  to: 'likes#create'
  post 'likes/:post_id/destroy', to: 'likes#destroy'

  get  'login',     to:  'users#login_form'
  post 'login',     to:  'users#login'
  post 'logout',    to:  'users#logout'

  get  'posts/index',       to: 'posts#index'
  get  'posts/new',         to: 'posts#new'
  post 'posts/create',      to: 'posts#create'
  get  'posts/:id',         to: 'posts#show'
  get  'posts/:id/edit',    to: 'posts#edit'
  post 'posts/:id/update',  to: 'posts#update'
  post 'posts/:id/destroy', to: 'posts#destroy'
  
  get  'users/index',       to:  'users#index'
  get  'users/:id',         to:  'users#show'
  get  'signup',            to:  'users#new'
  post 'users/create',      to:  'users#create'
  get  'users/:id/edit',    to:  'users#edit'
  post 'users/:id/update',  to:  'users#update'
  get  'users/:id/likes',   to:  'users#likes'

end
