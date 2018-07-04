Rails.application.routes.draw do



resources :trainers, controller: "trainers"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :clients do 
  	resources :enquiries
  end
  resources :sessions
  resources :listings


  delete "/sign_out" => "sessions#destroy", as: "sign_out"
  patch "/clients" => "clients#update"
  patch "/listings" => "listings#update"
end
