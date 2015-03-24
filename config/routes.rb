Rails.application.routes.draw do
  resources :taxonomies, only: [:index, :show]

  resources :categories, only: [:index, :show]

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'visitors#index'
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }
end