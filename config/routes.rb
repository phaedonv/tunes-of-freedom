Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  root to: "lists#welcome"

  get "welcome", to: "lists#welcome"
  post 'lists/:id', to: 'lists#show'
  resources :lists

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
