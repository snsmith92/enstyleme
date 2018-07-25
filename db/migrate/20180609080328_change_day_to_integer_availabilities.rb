class ChangeDayToIntegerAvailabilities < ActiveRecord::Migration[5.0]
  def change
    add_column :availabilities, :day, :integer
  end
end
