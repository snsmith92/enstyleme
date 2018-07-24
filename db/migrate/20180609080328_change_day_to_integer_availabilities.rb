class ChangeDayToIntegerAvailabilities < ActiveRecord::Migration[5.0]
  def change
    remove_column :availabilities, :day, :string 
    add_column :availabilities, :day, :integer
  end
end
