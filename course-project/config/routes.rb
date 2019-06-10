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
  
  resources :reports
  resources :comments
  resources :posts do
    member do
      put "like" => "posts#upvote"
      put "unlike" => "posts#downvote"
    end
    #post 'comments', to: 'comments#create'
    resources :comments , only: [:create,:destroy]
  end
  resources :geofences
  resources :user_types
  resources :users do
    resources :follows, :only => [:create,:destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
