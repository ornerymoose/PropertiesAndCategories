Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  resources :tickets
  resources :subscriptions
  resources :categorizations
  resources :properties
  resources :categories
  get '/history', to: 'tickets#history'
  root 'tickets#index'
  get "*path" => redirect("/")
end
