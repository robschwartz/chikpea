# t.integer  "location_id"
# t.string   "start_time"
# t.string   "end_time"
# t.datetime "date"
# t.string   "ages"
# t.string   "activity"
# t.string   "title"
# t.string   "description"
# t.integer  "available_spots"
class Session < ApplicationRecord
  has_many :children
  belongs_to :location
end
