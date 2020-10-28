Rails.application.routes.draw do
  devise_for :users

  root to: "lists#welcome"
  get "welcome", to: "lists#welcome"
  post 'lists/:id', to: 'lists#show'
  resources :lists

  post 'dashboards/:id', to: 'dashboards#show'
  resources :dashboards, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
