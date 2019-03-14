Rails.application.routes.draw do
  get 'posts/new'
  get 'posts/show'
  get 'subreddits/show'
  get 'subreddits/new'
  get 'subreddits/index'
  get 'users/new'
  root 'static_pages#home'

  resources :subreddits
  resources :posts
end
