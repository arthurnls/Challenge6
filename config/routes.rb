Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root "customers#index"

  # resources :customers, only: [:index]

  get "/", to: "customers#index"
  get "/customers/sorted", to: "customers#sorted"
  get "/customers/missing_email", to: "customers#missing_email"
end
