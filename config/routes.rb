Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users

  # This gives you:
  # /blog
  # /blog/:name-of-the-article
  namespace :blog do
    resources :articles, path: '', only: [:index, :show]
  end


end
