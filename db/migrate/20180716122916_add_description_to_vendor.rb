class AddDescriptionToVendor < ActiveRecord::Migration[5.0]
  def change
    add_column :vendors, :description, :text
  end
end
