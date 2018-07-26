class AddActiveAndDecimalToService < ActiveRecord::Migration[5.0]
  def change
    change_column :services, :cost_absolute, :decimal, precision: 6, scale: 2
    add_column :services, :active, :boolean
  end
end
