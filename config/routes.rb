Rails.application.routes.draw do
  namespace :admin do
    resources :topics
    resources :main_images
    resources :artists
    resources :exhibitions
    resources :articles
    resources :connections

    root to: "articles#index"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
