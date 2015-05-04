Rails.application.routes.draw do
  
  get 'administrations/index'

  get 'administrations/new'

  get 'administrations/create'

  get 'administrations/edit'

  get 'administrations/update'

  get 'administrations/show'

  get 'administrations/delete'

  get 'games/index'

  get 'games/new'

  get 'games/create'

  get 'games/edit'

  get 'games/upadate'

  get 'games/show'

  get 'games/delete'

  get 'dashboards/index'

  get 'dashboards/new'

  get 'dashboards/create'

  get 'dashboards/edit'

  get 'dashboards/update'

  get 'dashboards/show'

  get 'dashboards/delete'

  resources :sessions
  resources :users

  root 'sessions#new'

  # get 'sessions/index'

  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/edit'

  # get 'sessions/update'

  # get 'sessions/show'

  # get 'sessions/delete'

  # get 'users/index'

  # get 'users/new'

  # get 'users/create'

  # get 'users/edit'

  # get 'users/update'

  # get 'users/show'

  # get 'users/delete'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
