class AddFlightIdToPassengerAndRemoveBookingId < ActiveRecord::Migration[6.1]
  def change
    add_column :passengers, :flight_id, :integer
    remove_column :passengers, :booking_id, :integer
  end
end
