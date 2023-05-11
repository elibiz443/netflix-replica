Rails.application.routes.draw do
  resources :home
  resources :movies
  root "home#index"
end
