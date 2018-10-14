Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      get '/find_restaurants', to: 'restaurants#find_restaurants'

      resources :restaurant_users
      resources :restaurants
      resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    end
  end
end
