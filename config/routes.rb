Rails.application.routes.draw do
  resources :instructions
  resources :orders
  resources :bakeries
  resources :addresses
  resources :doughs
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
