Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'restaurants', to: 'restaurants#index'
  post 'restaurants', to: 'restaurants#create'
  post 'reviews', to: 'reviews#create'
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  get 'reviews/new', to: 'reviews#new', as: :new_review
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant


end
