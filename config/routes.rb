Rails.application.routes.draw do
  
  
  devise_for :users
  root to: 'categories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories do 
    resources :specialists, only: [:index, :show, :update, :new, :create] do
      resources :consultations, only: [:index, :new, :create, :show] 
    end
  end

  resources :consultations, only: [:destroy] 
  resources :specialist, only: [:destroy]
  


end
