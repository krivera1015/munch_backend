require "json"
require "http"
require "optparse"

#we are creating a class that will initialize our
#each api and we can use anywhere on our app


class YelpApi

    #method will initialize our url
    def initialize
        @api_host = "https://api.yelp.com"
        @search_path = "/v3/businesses/search"      
    end

    #method will take my initial url and add to
    #the params we are passing as arguments
    def search(term, location, radius, limit = 10)
        url = "#{@api_host}#{@search_path}"
        params = {
            term: term,
            location: location,
            # radius: radius,
            limit: limit
        }
        response = HTTP.auth("Bearer #{ENV['API_KEY']}").get(url, params: params)
        #byebug
        if response.status.to_i < 300
            response.parse
        else 
            return { error: "No Location Found" }
        end
    end

    def specific_restaurant(id)
        url = "https://api.yelp.com/v3/businesses/#{id}"
        response = HTTP.auth("Bearer #{ENV['API_KEY']}").get(url)
        response.parse
    end
    
end