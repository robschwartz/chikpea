class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.integer :location_id
      t.string :start_time
      t.string :end_time
      t.datetime :date
      t.string :ages_group
      t.string :activity
      t.string :title
      t.string :description
      t.integer :open_spots

      t.timestamps
    end
  end
end
