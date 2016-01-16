Rails.application.routes.draw do
  root "users#index"

  #Routes for users
  get "/users", to: "users#index", as: "users"

  #Routes for articles
  get "/users/:id/articles", to: "articles#index", as: "articles"
  #All articles a user has created should appear under one user
end
