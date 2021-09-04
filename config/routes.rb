Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :coaches, only: [:index] do 
    resources :time_slots, only: [:index]
  end

  resources :appointments, only: [:create]
end
