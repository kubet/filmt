Rails.application.routes.draw do
  get 'episodes/show'
  get 'series/index'
  get 'series/show'
  get 'films/index'
  get 'films/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :films, only: [:show]
  resources :series, only: [:show]
  root 'films#index'
  get '/films/:id' => 'films#show'
  get "series" => 'series#index'
end
