class RemoveEmailAndAddLinksToVendors < ActiveRecord::Migration[5.0]
  def change
    remove_column :vendors, :company_email
    add_column :vendors, :facebook, :string
    add_column :vendors, :website, :string
  end
end
