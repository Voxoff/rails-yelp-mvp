Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'restaurants', to: 'restaurant#index'

  ### new above id otherswise he'll get confuszed
  # get 'restaurants/new', to: 'restaurant#new'
  # get 'restaurants/:id', to: 'restaurant#show'

  # post 'restaurants', to: 'restaurants#creationte'
  resources :restaurants do
    resources :reviews, except: [:index]
  end
  root to: 'restaurants#index'
end
