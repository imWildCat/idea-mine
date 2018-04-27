Rails.application.routes.draw do

  root to: 'ideas#index'

  resources :ideas
  resources :users
  resource :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
