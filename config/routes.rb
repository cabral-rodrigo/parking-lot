Rails.application.routes.draw do
  devise_for :users
  root to: 'parkings#index'

  resources :bookings, except: [:destroy, :new, :create] do
    resources :reviews, only: [:new, :create]
  end

  resources :parkings, except: :index do
    resources :bookings, only: [:create, :new]
  end

  namespace :owner do
    resources :parkings, only: :index
    resources :bookings, only: :index
  end

  namespace :client do
    resources :bookings, only: :index
  end
end
