class AddDepartureDateToFlights < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :departure_date, :date
  end
end
