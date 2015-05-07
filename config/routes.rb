Rails.application.routes.draw do
 
  resources :comments
  resources :administrations
  resources :games
  resources :dashboards
  resources :sessions
  resources :users
  resources :forums
  resources :ratings
 
  root 'sessions#new'

end
