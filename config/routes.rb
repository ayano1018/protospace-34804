Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  root to: "prototypes#index"
  post 'prototypes', to: 'prototypes#create'
  get  'prototypes', to: 'prototypes#show'



 
  resources :prototypes, only: [:index, :new, :create, :show, :edit, :update, :destroy]do
   resources :comments, only: :create
  end
  resources :users, only: :show
end
