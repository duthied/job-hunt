Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "roles#index"

  # get "/roles", to: "roles#index"
  # get "/roles/:id", to: "roles#show"
  # above lines replaced by:
  resources :roles do
    resources :logentries
  end
end
