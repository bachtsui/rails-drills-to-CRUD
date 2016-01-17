Rails.application.routes.draw do
  root "users#index"

  get "/users", to: "users#index", as: "users"
  get "/signup", to: "users#new", as: "new_user"
  post "/users", to: "users##create" as: "create_user"
end
