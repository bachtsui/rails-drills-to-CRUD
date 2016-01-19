Rails.application.routes.draw do
  root to: "users#index"

  #Routes for CRUD for Users
  get "/users", to: "users#index", as: "users"
  get "/signup", to: "users#new", as: "new_user"
  post "/users", to: "users#create", as: "create_user"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy"

  #Routes for login form, logging in and logging out
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"

  #Routes for CRUD for Articles
  get "/users/:id/articles", to: "articles#index", as: "articles"
  get "/users/:id/articles/new", to: "articles#new", as: "new_article" 
  post "/users/:id/articles", to: "articles#create", as: "create_article"
  get "/users/:id/articles/:id", to: "articles#show", as: "article"
  get "/users/:id/articles/:id/edit", to: "articles#edit", as: "edit_article"
  patch "/users/:id/articles/:id", to: "articles#update", as: "update_article"
  delete "/users/:id/articles/:id", to: "articles#destroy", as: "delete_article" 
end
