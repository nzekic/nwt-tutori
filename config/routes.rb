OglasnikZaTutore::Application.routes.draw do

  resources :subjects

  resources :users
scope "(:locale)", locale: /en|bs|hr|sr/ do
  root 'home#index'
  post "accounts/login"
  get "accounts/logout"
  post "accounts/register"
  get "accounts/register", to: 'accounts#index'

  get "accounts/activate"
  post "accounts/reset_password"
  post "accounts/activate_account"
  post "accounts/update_my_profile"
  get "accounts/show_my_profile"
  get "tutor_ads/show_my_ads"
  post "tutor_ads/create"
  get "dashboard/registered_users"

  resources :dashboard, :only => [ :index, :registered_users ]
  resources :appointments

  resources :tutoring_times

  resources :ads

  resources :research_areas



  resources :privileges

  resources :profiles

  resources :signups, :only => [:index, :create]
  get 'signup' => 'signups#index'

  resources :accounts, :only => [:index, :register]
  get 'accounts' => 'accounts#index'

  resources :sessions, :only => [:index, :create, :destroy]
  get 'login' => 'sessions#index'
  get 'logout' => 'sessions#destroy'

  resources :profiles, :only => [:index]
  get 'profile' => 'profiles#index'
    # Assets redirect
  get '/img/:name', to: redirect {|params, req| "/assets/#{params[:name]}.#{params[:format]}" }
  get '/images/:name', to: redirect {|params, req| "/assets/#{params[:name]}.#{params[:format]}" }
  get '/fonts/:name', to: redirect {|params, req| "/assets/#{params[:name]}.#{params[:format]}" }
  get '/' => 'home#index'
end

end
