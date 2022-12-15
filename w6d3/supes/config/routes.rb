Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    #returns all 
#   get 'superheroes', to: 'superheroes#index'
#   get 'superheroes/:id', to: 'superheroes#show'
#   post 'superheroes', to: 'superheroes#create'
#   patch 'superheroes/:id', to: 'superheroes#update'
#   put 'superheroes/:id', to: 'superheroes#update'
#   delete 'superheroes/:id', to: 'superheroes#destroy'

    get 'silly', to: 'silly#fun'
    post 'silly', to: 'silly#time'
    post 'silly/:thid', to: 'silly#super'
    resources :superheroes, only: [:index, :show, :create, :update, :destroy]

    #returns all abilities for a superhero nested under superhero
    resources :superheroes do
        # this is a collection route
        resources :abilities, only: [:index]
    end
    # these are member routes
    resources :abilities, only: [:show, :update, :create, :destroy]
end
