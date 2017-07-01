Rails.application.routes.draw do

  scope "(:locale)", locale: /en|ja/ do
  end

  get '/:locale' => 'home#index'

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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
