# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    root to: 'base#admin_home'
    resources :resources
    resources :categories
  end
  devise_for :users
  root to: 'pages#home'
  get "resources", to: "pages#resources"
end
