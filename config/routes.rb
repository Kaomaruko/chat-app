Rails.application.routes.draw do
  get 'messages/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :users, only: [:edit, :update]
  # Defines the root path route ("/")
  root to: "messages#index"
end
