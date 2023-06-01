Rails.application.routes.draw do
  resources :categories

<<<<<<< HEAD
  # Defines the root path route ("/")
  # root "articles#index"
  resources :pledges
=======
    get "/categories" => "categories#index"
    get "/categories/:id" => "categories#show"
    post "/categories" => "categories#create"

    get "/catgeories" => "categories#new"
>>>>>>> 41c75259681ba32abcc96bb14928e9da76225d4d
  resources :projects
end
