Rails.application.routes.draw do
  resources :users, only: [:index, :show, :new, :create, :destroy]
  resources :posts, only: [:index, :show, :new, :create, :destroy]
  resources :comments, only: [:new, :create, :destroy]

  get "login", to: "logins#new"
  post "login", to: "logins#create"
  get "logout", to: "logins#destroy"
  post "logout", to: "logins#destroy"
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
