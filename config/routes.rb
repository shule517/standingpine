Rails.application.routes.draw do
  namespace :admin do
    resources :topics
    resources :main_images
    resources :artists
    resources :artist_exhibitions
    resources :exhibitions
    resources :exhibition_articles
    resources :articles

    root to: "articles#index"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
