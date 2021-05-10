class RemovePassengerCountFromFlights < ActiveRecord::Migration[6.1]
  def change
    remove_column :flights, :passenger_count, :integer
  end
end
