class AddFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :stripe_id, :string
    add_column :users, :postcode, :string
    add_column :users, :phone, :string
    add_column :users, :primary_city, :string
    add_column :users, :street1, :string
    add_column :users, :street2, :string
    add_column :users, :city, :string
    add_column :users, :province, :string
    add_column :users, :drop_in_credits, :integer
  end
end
