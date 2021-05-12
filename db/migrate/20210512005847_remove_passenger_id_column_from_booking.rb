class RemovePassengerIdColumnFromBooking < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :passenger_id, :integer
  end
end
