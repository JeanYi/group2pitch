Rails.application.routes.draw do



resources :trainers, controller: "trainers"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :clients, controller: "clients"
  resources :sessions, controller: "sessions"

  delete "/sign_out" => "sessions#destroy", as: "sign_out"
  patch "/clients" => "clients#update"
end
