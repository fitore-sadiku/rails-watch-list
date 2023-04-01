Rails.application.routes.draw do
  root to: "movies#index"

resources :movies do
  resources :bookmarks, only: [:new, :create]
end

resources :lists, except: [:edit] do
  resources :bookmarks, only: [:new, :create]
end

resources :bookmarks, only: [:destroy]
  end
  # Defines the root path route ("/")
  # root "articles#index"
