OglasnikZaTutore::Application.routes.draw do


  post "accounts/login"
  get "accounts/logout"
  post "accounts/register"
  get "accounts/activate_account"
  post "accounts/reset_password"
  post "accounts/activate_account"
  post "accounts/update_my_profile"
  get "accounts/show_my_profile"
  get "tutor_ads/show_my_ads"
  post "tutor_ads/create"
  get 'accounts', to: 'accounts#index'
  resources :appointments

  resources :tutoring_times

  resources :ads

  resources :research_areas

  resources :subjects

  resources :users

  resources :privileges

  # Assets redirect
  get '/img/:name', to: redirect {|params, req| "/assets/#{params[:name]}.#{params[:format]}" }
  get '/images/:name', to: redirect {|params, req| "/assets/#{params[:name]}.#{params[:format]}" }

  root 'home#index'

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
