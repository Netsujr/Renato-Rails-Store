# frozen_string_literal: true

Rails.application.routes.draw do
  resources :cart_items
  resources :carts
  resources :items
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root 'items#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
