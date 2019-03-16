Rails.application.routes.draw do



  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/new_user', to: 'users#new'
  post '/new_user', to: 'users#create'
  get 'users/show'
  get 'users/index'
  root 'static_pages#home'

  get 'subreddits/show'
  get 'subreddits/new'
  get 'subreddits/index'


  resources :subreddits do
    resources :posts
  end

  resources :users
end
