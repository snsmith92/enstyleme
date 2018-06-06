class AddAvailableToAvailability < ActiveRecord::Migration[5.0]
  def change
    add_column :availabilities, :available, :boolean
  end
end
