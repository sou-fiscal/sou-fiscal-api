Rails.application.routes.draw do
  resources :addresses
  resources :messages
  resources :complaints
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
