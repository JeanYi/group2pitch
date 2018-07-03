Rails.application.routes.draw do

	root 'trainers/'
resources :trainers, controller: "trainers"
end
