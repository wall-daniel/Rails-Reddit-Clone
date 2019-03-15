Rails.application.routes.draw do

  root 'static_pages#home'

  get 'subreddits/show'
  get 'subreddits/new'
  get 'subreddits/index'
  get 'users/new'


  resources :subreddits do
    resources :posts
  end
end
