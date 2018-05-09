class CreateVendors < ActiveRecord::Migration[5.0]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :country
      t.string :city
      t.string :address
      t.string :zip
      t.string :phone1
      t.string :phone2
      t.string :company_email
      t.integer :user_id
      t.boolean :consent
      t.timestamps
    end
    add_index :vendors, :user_id
    add_index :vendors, :country
    add_index :vendors, :city
  end
end
