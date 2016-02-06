Rails.application.routes.draw do
  resources :examples
  
  root 'home#index'
end
