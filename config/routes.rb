Rails.application.routes.draw do


  devise_for :users
  resources :featureds
  resources :descriptive_pages
  resources :videos
  resources :images
  resources :promises
  resources :wishlists
  resources :categories
  resources :user_funds_projects
  resources :projects
  post "/sessions/new", to: "sessions#create"
  get '/admin', to: "admin#index"
  post '/admin/project', to: "admin#project"
  get '/admin/users', to: "admin#users"
  post '/admin/user', to: "admin#users_admin"
  resources :user_buys_promises
  resources :profiles
  get 'home/index'
  get 'user_projects/index'

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
