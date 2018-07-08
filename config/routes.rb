Rails.application.routes.draw do

root 'pages#index'

resources :static_listings
resources :trainers 
resources :pages
resources :listings, only: :index 
  
resources :clients do 
  	resources :enquiries do
      resources :listings
    end
  end
 
  get "/" => "pages#index" 

  get "/sign_in_trainer" => "sessions#new_trainer", as: "sign_in_trainer"
  delete "/sign_out_trainer" => "sessions#destroy_trainer", as: "sign_out_trainer"
  post "/sessions_trainer" => "sessions#create_trainer" 

  get "/sign_in" => "sessions#new", as: "sign_in"
  delete "/sign_out" => "sessions#destroy", as: "sign_out"
  post "/sessions" => "sessions#create" 
  patch "/clients" => "clients#update"
  get 'braintree/new'
  post 'braintree/checkout'

  
end
