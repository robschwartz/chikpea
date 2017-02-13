class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.integer :partner_id
      t.boolean :primary_location
      t.string :street1
      t.string :street2
      t.string :country
      t.string :province
      t.string :city
      t.string :neighborhood
      t.string :postcode
      t.string :phone
      t.integer :total_bookings

      t.timestamps
    end
  end
end
