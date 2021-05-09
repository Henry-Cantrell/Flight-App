class AddDestinationIdToFlight < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :destination_id, :integer
  end
end
