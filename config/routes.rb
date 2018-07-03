Rails.application.routes.draw do


	root 'trainers/'
resources :trainers, controller: "trainers"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :clients

  resources :sessions

end
