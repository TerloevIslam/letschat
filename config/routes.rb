Rails.application.routes.draw do
  mount ActionCable.server => '/rooms'

  resources :messages
  resources :rooms

  root 'rooms#index'
end
