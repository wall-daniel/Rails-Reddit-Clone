Rails.application.routes.draw do


  get 'users/new'
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
