class BookingsController < ApplicationController
    def new
        #Logic for chosen flight info display
        @booking_flight = nil
        @booking_flight_date = nil
        @booking_flight_origin = nil
        @booking_flight_arrival = nil
        @booking_flight_id = nil
        @booking_passenger_count = nil
        @search = params['flight_select']
        if @search.present?
            #Converts model query results into arrays to be accessed for display in views
            @flight_id = @search['id']
            @booking_flight = Flight.where(id: @flight_id)
            @booking_flight_name = @booking_flight.map{ |f| f.name }
            @booking_flight_date = @booking_flight.map{ |f| f.departure_date }
            @booking_flight_origin = @booking_flight.map{ |f| f.origin.airport_code }
            @booking_flight_destination = @booking_flight.map{ |f| f.destination.airport_code }
            @booking_flight_id = @booking_flight.map{ |f| f.id }
            @booking_passenger_count = @search['passenger_count']
        end
        #Logic for creating booking/passenger
        @booking = Booking.new
        @booking_passenger_count.to_i.times { @booking.passengers.build }
    end

    def show
        @bookings = Booking.all
    end

    def create
    end

    private

    def booking_params
        params.require(:booking).permit(:passenger_count, :flight_id)
    end

    def passenger_params
        params.require(:passenger).permit(:name, :email)
    end
end
