Rails.application.routes.draw do
  resources :categories

  get "/categories" => "categories#index"
  get "/categories/:id" => "categories#show"
  post "/categories" => "categories#create"
end
