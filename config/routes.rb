Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "rooms#index"

  resources :rooms do
    resources :messages, only: %i[new create]
  end
end
