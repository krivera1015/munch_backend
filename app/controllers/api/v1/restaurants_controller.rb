class Api::V1::RestaurantsController < ApplicationController

    def find_restaurants
        yelp = YelpApi.new 
        limit = params[:limit] || 10 #this is default if no params passed
        render json: yelp.search(params[:term], params[:location], params[:radius], limit) #turns into JSON string
    end


end
