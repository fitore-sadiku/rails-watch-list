Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/destroy'
  get 'lists/index'
  get 'lists/show'
  get 'lists/new'
  get 'lists/create'
  get 'lists/edit'
  get 'lists/update'
  get 'lists/destroy'
  get 'movies/index'
  get 'movies/show'
  get 'movies/new'
  get 'movies/create'
  get 'movies/edit'
  get 'movies/update'
  get 'movies/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
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
