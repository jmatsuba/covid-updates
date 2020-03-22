# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#home'
  get "resources", to: "pages#resources"
end
