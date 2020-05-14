Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "homes#index"

  get 'homes/index'
  get 'homes/search'

  # get 'musicians/index'
  # get 'musicians/show'
  # get 'musicians/edit'
  # get 'luthiers/index'
  # get 'luthiers/show'
  # get 'luthiers/edit'

  # get 'media/index'
  # get 'media/show'
  # get 'media/edit'
  # get 'products/index', to: "products#index"
  # get 'products/show', to: "products#show"
  
  # get 'products/edit', to: "products#edit"
  # get 'products/:id/edit', to: "products#edit", as: :edit_product

  # get 'products/:id', to: "products#show", as: 'product'
  # patch 'products/:id', to: "products#update"
  resources :products

  resources :media

  resources :luthiers

  resources :musicians

  # get 'subscribe_media/index'
  # get 'subscribe_media/edit'
  # get 'subscribe_products/index'
  # get 'subscribe_products/edit'
  # get 'subscribe_musicians/index'
  # get 'subscribe_musicians/edit'
  # get 'subscribe_luthiers/index'
  # get 'subscribe_luthiers/edit'

end
