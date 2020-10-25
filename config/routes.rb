Rails.application.routes.draw do
  devise_for :users

  root to: "lists#welcome"
  get "welcome", to: "lists#welcome"
  post 'lists/:id', to: 'lists#show'
  resources :lists


  get "dashboard",to: 'lists#dashboard'
  post "dashboard",to: 'lists#dashboard'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
