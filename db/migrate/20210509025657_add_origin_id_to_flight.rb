class AddOriginIdToFlight < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :origin_id, :integer
  end
end
