Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'coaches#index'

  resources :coaches, only: [:index] do 
    resources :time_slots, only: [:index]
  end

  resources :time_slots, only: [:show] do 
    resources :appointments, only: [:new, :create]
  end

  resources :users, only: [:new, :create, :show] 
  resources :appointments, only: [:destroy]
end
