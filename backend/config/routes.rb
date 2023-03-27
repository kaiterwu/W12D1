Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api, defaults: { format: :json } do
    get '/pokemon/types', to: 'pokemon#types', as: 'pokemon_types'
    resources :items, only: [:update, :destroy]
    resources :pokemon, only: [:index, :create, :show, :update] do 
      resources :items, only: [:index, :create]
    end
  end
end
