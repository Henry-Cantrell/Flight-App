class AddNameToFlights < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :name, :string
  end
end
