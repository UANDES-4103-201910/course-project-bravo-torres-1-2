Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  get 'home/show'
  devise_for :users
  get 'admin/home'
  get 'temrsofservice/main'
  get 'blacklist/main'
  get 'dumpster/main'
  get 'static_pages/home' 
  get 'search', to: "posts#search"
  get 'auth/:provider/callback', to: "sessions#create"
  root to: "static_pages#home"
  resources :dis_liked_posts
  resources :liked_posts
  resources :reports
  resources :comments
  resources :posts
  resources :geofences
  resources :user_types
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
