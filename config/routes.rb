Rails.application.routes.draw do
  devise_for :users
  root to: 'parkings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bookings, except: [:destroy, :new, :create] do
    resources :reviews, only: [:new, :create]
  end

  resources :parkings, except: :index do
    resources :bookings, only: [:create, :new]
  end

  namespace :owner do
    resources :parkings, except: [:new, :create] do
      resources :bookings, only: [:edit, :update]
    end
    resources :bookings, only: [:index, :show]
  end
end
