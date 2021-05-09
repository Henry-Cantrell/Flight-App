class AddBookingIdToFlight < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :booking_id, :integer
  end
end
