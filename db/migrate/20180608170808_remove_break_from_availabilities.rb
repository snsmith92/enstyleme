class RemoveBreakFromAvailabilities < ActiveRecord::Migration[5.0]
  def change
    remove_column :availabilities, :break_start
    remove_column :availabilities, :break_end
    remove_column :availabilities, :available
    remove_column :availabilities, :day
    add_column :availabilities, :day, :integer
  end
end
