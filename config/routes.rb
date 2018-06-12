Rails.application.routes.draw do


  devise_for :users, controllers: {:omniauth_callbacks => 'callbacks'}
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
  get '/user_found_projects_request', to: "user_funds_projects#user_fund_request_my_projects"
  post '/user_found_projects_request/reject/:id', to: "user_funds_projects#reject"
  post '/user_found_projects_request/accept/:id', to: "user_funds_projects#accept"
  get '/search', to: "categories#search"

  get 'home/index'
  get 'user_projects/index'
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
