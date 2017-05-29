Rails.application.routes.draw do
  namespace :admin do
    resources :articles
    resources :artists
    resources :artist_exhibitions
    resources :exhibitions
    resources :main_images
    resources :topics

    root to: "articles#index"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
