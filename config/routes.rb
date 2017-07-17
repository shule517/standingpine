Rails.application.routes.draw do

  get 'gallery', to: 'galleries#index'
  resources :artists, only: [:index, :show]
  resources :exhibitions, only: [:index, :show]
  resources :articles, only: [:index, :show]

  scope "(:locale)", locale: /en|ja/ do
  end

  get '/:locale', to: 'home#index', constraints: { locale: 'en' }

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
