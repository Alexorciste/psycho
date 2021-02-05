Rails.application.routes.draw do
  
  get 'consultations/index'
  get 'consultations/show'
  get 'consultations/create'
  get 'consultations/new'
  get 'consultations/update'
  get 'consultations/edit'
  get 'consultations/destroy'
  devise_for :users
  root to: 'categories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories do 
    resources :specialists
  end
end
