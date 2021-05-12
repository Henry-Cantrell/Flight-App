class RemoveFlightIdFromPassenger < ActiveRecord::Migration[6.1]
  def change
    remove_column :passengers, :flight_id, :integer
  end
end
