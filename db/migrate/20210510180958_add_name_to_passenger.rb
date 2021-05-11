class AddNameToPassenger < ActiveRecord::Migration[6.1]
  def change
    add_column :passengers, :name, :string
  end
end
