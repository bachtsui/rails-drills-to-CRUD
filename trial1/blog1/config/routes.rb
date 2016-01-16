Rails.application.routes.draw do
  root "users#index"

  #Routes for users
  get "/users", to: "users#index", as: "users"

  #Routes for articles
  get "/users/:id/articles", to: "articles#index", as: "articles"
  #All articles a user has created should appear under one user
  get "/users/:id/articles/new", to: "articles#new", as: "new_article" 
  post "/users/:id/articles", to: "articles#create", as: "create_article"
  get "/users/:id/articles/:id", to: "articles#show", as: "article"
  get "/users/:id/articles/:id/edit", to: "articles#edit", as: "edit_article"
  patch "/users/:id/articles/:id", to: "articles#update", as: "update_article"
end
