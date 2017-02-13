class CreatePartners < ActiveRecord::Migration[5.0]
  def change
    create_table :partners do |t|
      t.integer :user_id
      t.string :name
      t.string :phone
      t.integer :booking_rate
      t.integer :account_balance
      t.integer :total_bookings

      t.timestamps
    end
  end
end
