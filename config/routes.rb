Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      post '/find_restaurants', to: 'restaurants#find_restaurants'
      post '/attributes', to: 'restaurants#attributes'
      resources :restaurant_users
      resources :restaurants
      resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    end
  end
end
