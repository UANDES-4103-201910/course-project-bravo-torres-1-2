Rails.application.routes.draw do
  get 'log_in/main'
  get 'registration/main'
  root 'static_pages#home'
  
  get 'static_pages/home'  
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
