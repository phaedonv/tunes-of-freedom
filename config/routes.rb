Rails.application.routes.draw do
  devise_for :users
  root to: "lists#welcome"

  get "welcome", to: "lists#welcome"
  post 'lists/:id', to: 'lists#show'
  resources :lists

  resources :dashboards, only: [:new, :create, :show, :edit, :update, :destroy]
  post '/dashboards/:id', to: 'dashboards#show', :as => :users

  get 'dashboard', to: 'root#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
