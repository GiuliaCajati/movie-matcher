Rails.application.routes.draw do
  # resources :user_movie_matches, only: [:create]
  get "user_movie_matches/:id", to: "user_movie_matches#new_matches", as: "new_matches"
  post "user_movie_matches/:id", to: "user_movie_matches#create_new_matches", as: "create_new_matches"

  resources :cities
  resources :movies
  resources :users
  get "/matches/:id", to: "users#matches", as: "matches"

  get "/", to: "sessions#welcome", as: "welcome"
  post "/", to: "sessions#process_login", as: "process_login"
  get "/logout", to: "sessions#logout"

end
