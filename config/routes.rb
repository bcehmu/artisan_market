Rails.application.routes.draw do
  devise_for :users

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
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "products#index"



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



end
