class RemoveBreakFromAvailabilities < ActiveRecord::Migration[5.0]
  def change
    remove_column :availabilities, :break_start
    remove_column :availabilities, :break_end
    remove_column :availabilities, :available
  end
end
