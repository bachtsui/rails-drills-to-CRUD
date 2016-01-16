Rails.application.routes.draw do
  root "users#index"

  get "/users", to: "users#index", as: "users"
  
  #get "/users/:id/articles", to: "articles#index", as: "articles"
  #All articles a user has created should appear under one user
  #I think I'm getting ahead of myself here, let's start with users first
end
