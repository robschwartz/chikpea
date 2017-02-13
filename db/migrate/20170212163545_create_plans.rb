class CreatePlans < ActiveRecord::Migration[5.0]
  def change
    create_table :plans do |t|
      t.integer :session_limit
      t.string :description
      t.string :name
      t.string :interval
      t.string :currency
      t.integer :amount
      t.string :stripe_id

      t.timestamps
    end
  end
end
