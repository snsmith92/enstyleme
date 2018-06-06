class AddCategoriesToVendor < ActiveRecord::Migration[5.0]
  def change
    add_reference :vendors, :category, foreign_key: true
  end
end
