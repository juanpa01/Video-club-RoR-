Rails.application.routes.draw do
  resources :actors
  devise_for :users
  root  'home#index'
  resources :movies
  resources :type_movies

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
