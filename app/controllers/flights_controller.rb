class FlightsController < ApplicationController
    def index
        #Logic for search form that creates arrays for simple_form collections
        @flights = Flight.all
        @flights_origins = Flight.all.map{ |f| [f.origin.airport_code, f.origin.id] }
        @flights_destinations = Flight.all.map{ |f| [f.destination.airport_code, f.destination.id] }
        @flights_dates = Flight.all.map{ |f| [f.departure_date, f.departure_date] }
        #Logic for populating post-search menu
        @flight_search_results = nil
        @flight_search_results_names = nil
        #Logic for search results lookup that parses nested URL key-value pairs for query purposes
        @search = params['lookup']
        if @search.present?
            @origin = @search['origin_id']
            @destination = @search['destination_id']
            @departure_date = @search['departure_date']
            @flight_search_results = Flight.where(origin_id: @origin, destination_id: @destination, departure_date: @departure_date)
            @flight_search_results_names = @flight_search_results.map{ |f| [f.name, f.id] }
        end
    end
end

