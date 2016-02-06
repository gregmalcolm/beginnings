Rails.application.routes.draw do
  devise_for :users
  resources :examples
  
  root 'home#index'
end
