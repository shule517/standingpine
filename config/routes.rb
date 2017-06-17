Rails.application.routes.draw do
  root to: "home#index"

  namespace :admin do
    resources :articles
    resources :main_images
    resources :artists
    resources :exhibitions
    resources :artworks
    resources :connections

    root to: "articles#index"
  end
end
