class Api::V1::RestaurantsController < ApplicationController

    def find_restaurants
        yelp = YelpApi.new 
        limit = params[:limit] || 30 #this is default if no params passed
        # render json: "hello homie"
        render json: yelp.search("food", params[:location], limit) #turns into JSON string
    end

    def attributes
        #byebug
        yelp = YelpApi.new
        render json: yelp.specific_restaurant(params[:id])
    end
end
