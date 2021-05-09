class RemoveBookingIdFromFlights < ActiveRecord::Migration[6.1]
  def change
    remove_column :flights, :booking_id, :integer
  end
end
