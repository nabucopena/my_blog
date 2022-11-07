Rails.application.routes.draw do
  resources :users, only: [:index, :show, :new, :create, :destroy]
  resources :posts, only: [:index, :show, :new, :create, :destroy]
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
