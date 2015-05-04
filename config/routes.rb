Rails.application.routes.draw do
  
  resources :administrations
  resources :games
  resources :dashboards
  resources :sessions
  resources :users

  root 'sessions#new'

end
