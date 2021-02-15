Rails.application.routes.draw do
  
  
  get 'reviews/index'
  get 'reviews/new'
  get 'reviews/create'
  get 'reviews/edit'
  get 'reviews/update'
  get 'reviews/destroy'
  devise_for :users
  root to: 'categories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories do 
    resources :specialists, only: [:index, :show, :update, :new, :create] do
      resources :consultations, only: [:new, :create, :show] 
    end
  end

  resources :consultations, only: [:index, :destroy] 
  resources :specialist, only: [:destroy]
  resources :reviews


end
