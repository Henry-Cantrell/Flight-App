class RemovePassengerCountFromBooking < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :passenger_count, :integer
  end
end
