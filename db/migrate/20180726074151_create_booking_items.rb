class CreateBookingItems < ActiveRecord::Migration[5.0]
  def change
    create_table :booking_items do |t|
      t.references :service, foreign_key: true
      t.references :booking, foreign_key: true
      t.decimal :price, precision: 6, scale: 2
      t.string :cost_range

      t.timestamps
    end
  end
end
