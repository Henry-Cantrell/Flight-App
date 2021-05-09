class AddPassengerIdToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :passenger_id, :integer
  end
end
