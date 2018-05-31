class AddNameToVendor < ActiveRecord::Migration[5.0]
  def change
    add_column :vendors, :first_name, :string
    add_column :vendors, :last_name, :string
  end
end
