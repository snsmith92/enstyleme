class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.integer :hours
      t.integer :minutes
      t.decimal :cost_absolute
      t.string :cost_range
      t.integer :vendor_id
      t.integer :user_id
      t.timestamps
    end 
    add_index :services, :vendor_id
    add_index :services, [:user_id, :vendor_id]
  end
end
