Rails.application.routes.draw do
  
  get 'musician_invitations/index'
  get 'musician_invitations/new'
  get 'musician_invitations/edit'
  get 'musician_invitations/update'
  get 'musician_invitations/destroy'
  get 'luthier_invitations/index'
  get 'luthier_invitations/new'
  get 'luthier_invitations/edit'
  get 'luthier_invitations/update'
  get 'luthier_invitations/destroy'
  get 'contacts/index'
  get 'contacts/edit'
  get 'contacts/show'
  get 'contacts/update'
  get 'filters/index'
  get 'filters/search'
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

  resources :subscribe_luthiers

  resources :subscribe_musicians

  resources :subscribe_products

  resources :subscribe_media

  resources :contacts

  resources :luthier_invitations

  resources :musician_invitations

  get 'homes/apply', to: 'homes#apply' , as: 'apply'

  get 'homes/applym', to: 'homes#applym' , as: 'applym'

  # get 'subscribe_media/index'
  # get 'subscribe_media/edit'
  # get 'subscribe_products/index'
  # get 'subscribe_products/edit'
  # get 'subscribe_musicians/index'
  # get 'subscribe_musicians/edit'
  # get 'subscribe_luthiers/index'
  # get 'subscribe_luthiers/edit'

end
