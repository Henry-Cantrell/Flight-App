class AddFlightIdToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :flight_id, :integer
  end
end
