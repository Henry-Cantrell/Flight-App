class AddDurationToFlight < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :duration, :integer
  end
end
