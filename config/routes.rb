OglasnikZaTutore::Application.routes.draw do

  resources :sessions
  resources :subjects

  resources :users
  resources :ads

scope "(:locale)", locale: /en|bs|hr|sr|/ do

  root 'home#index'
  get "home", to: 'home#home'
  post "accounts/login"
  get "accounts/logout"
  post "accounts/register"
  get "accounts/register", to: 'accounts#index'
  #get "home", to: 'home#home'
  get "accounts/activate"
  post "accounts/reset_password"
  post "accounts/activate_account"
  post "accounts/update_my_profile"
  get "accounts/show_my_profile"
  get "tutor_ads/show_my_ads"
  post "tutor_ads/create"
  get "dashboard/registered_users"
  get "home/ads", to:"ads#all_ads", :defaults => { :format => 'json' }
  get "subjects/:id/subject_view", to:"subjects#subject_view", :defaults => { :format => 'json' }
  get "profiles/:id/user_profile", to:"profiles#user_profile", :defaults => { :format => 'json' }
  get "messages", to:"messages#messages", :defaults => { :format => 'json' }
  get "ads/search/ads_search", to:"ads#ads_search", :defaults => { :format => 'json' }

  resources :subjects
  resources :users
  resources :ads
  resources :dashboard, :only => [ :index, :registered_users ]
  resources :appointments

  resources :tutoring_times


  resources :research_areas

  resources :messages
  get 'messages' => 'messages#messages'

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
end

end
