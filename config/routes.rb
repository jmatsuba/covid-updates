# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    root to: 'base#admin_home'
    resources :resources
    resources :categories
  end
  devise_for :users
  root to: 'pages#home'
  get 'resources', to: 'pages#resources'
  post 'resources', to: 'resources#create'
  get 'suggest-resource', to: 'pages#suggest_resource'
  get 'thanks', to: 'pages#thanks'
  get ':region_slug', to: 'pages#region_home', as: :region_home
end
