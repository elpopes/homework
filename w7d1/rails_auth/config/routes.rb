Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :user

#   singular resources use resource
  resource :session, only: [:new, :create, :destroy]
end
