Rails.application.routes.draw do

root 'pages#index'

resources :static_listings
resources :trainers 
resources :listings
resources :pages 
  
resources :clients do 
  	resources :enquiries 
    end
 
  get "/" => "pages#index" 

  get "/sign_in_trainer" => "sessions#new_trainer", as: "sign_in_trainer"
  delete "/sign_out_trainer" => "sessions#destroy_trainer", as: "sign_out_trainer"
  post "/sessions_trainer" => "sessions#create_trainer" 

  get "/sign_in" => "sessions#new", as: "sign_in"
  delete "/sign_out" => "sessions#destroy", as: "sign_out"
  post "/sessions" => "sessions#create" 
  
  patch "/clients" => "clients#update"
  patch "/listings" => "listings#update"
  get 'braintree/new'
  post 'braintree/checkout'

  
end
