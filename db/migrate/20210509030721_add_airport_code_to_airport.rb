class AddAirportCodeToAirport < ActiveRecord::Migration[6.1]
  def change
    add_column :airports, :airport_code, :string
  end
end
