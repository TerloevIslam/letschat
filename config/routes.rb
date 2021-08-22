# frozen_string_literal: true

Rails.application.routes.draw do
  resources :messages
  resources :rooms

  root 'rooms#index'
end
