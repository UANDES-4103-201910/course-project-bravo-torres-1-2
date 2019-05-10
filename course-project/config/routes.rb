Rails.application.routes.draw do
  get 'admin/home'
  get 'blacklist/main'
  get 'dumpster/main'
  get 'log_in/main'
  get 'registration/main'
  get 'static_pages/home' 
  root 'log_in#main' 
  resources :dis_liked_posts
  resources :liked_posts
  resources :reports
  resources :comments
  resources :posts
  resources :geofences
  resources :user_types
  resources :users
  resources :log_in
  resources :registration
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
