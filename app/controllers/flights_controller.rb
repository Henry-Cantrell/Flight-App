class FlightsController < ApplicationController
    def index
        @flights = Flight.all
        @flights_origins = Flight.all.map{ |f| [f.origin.airport_code, f.origin.id] }
        @flights_destinations = Flight.all.map{ |f| [f.destination.airport_code, f.destination.id] }
        @flights_dates = Flight.all.map{ |f| [f.departure_date, f.departure_date] }
    end

    private

    def search_params
        params.require(:flight).permit(:origin_id, :destination_id, :departure_date)
    end
end

