Rails.application.routes.draw do
 
  resources :administrations
  resources :games
  resources :dashboards
  resources :sessions
  resources :users
  resources :forums
 
  root 'sessions#new'

end
