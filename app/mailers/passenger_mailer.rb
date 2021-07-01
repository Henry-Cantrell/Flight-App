class PassengerMailer < ApplicationMailer
    def confirmation_email
        @booking = Booking.find(params[:booking_id])
        mail(to: @booking.passengers.pluck(:email),
            subject: 'Your flight has been booked.')
    end
end
