PaymillRails::Application.routes.draw do
  root to: 'plans#index'
  resources :subscriptions, only: [:new, :create, :show]
  resources :plans, only: [:index]
end
