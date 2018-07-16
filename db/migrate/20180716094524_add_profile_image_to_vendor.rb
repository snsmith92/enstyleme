class AddProfileImageToVendor < ActiveRecord::Migration[5.0]
  def change
    add_column :vendors, :profile_image, :string
  end
end
