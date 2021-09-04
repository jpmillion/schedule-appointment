Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :coaches, only: [:index] do 
    resources :time_slots, only: [:index]
  end

  resources :users, only: [:new, :create] do   
    resources :appointments, shallow: true
  end 
end
