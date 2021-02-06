Rails.application.routes.draw do
  
  
  devise_for :users
  root to: 'categories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories do 
    resources :specialists, only: [:index, :update, :new, :create]
  end

  scope shallow_prefix: "sekret" do
    resources :specialists, only: [:edit, :show], shallow: true
  end


end
