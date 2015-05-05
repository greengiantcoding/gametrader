Rails.application.routes.draw do
  
  resources :administrations
  resources :games
  resources :dashboards
  resources :sessions
  resources :users

  get '/games/show/:id' => 'games#showOne'

  root 'sessions#new'

end
