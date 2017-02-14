# t.integer  "location_id"
# t.string   "start_time"
# t.string   "end_time"
# t.datetime "date"
# t.string   "ages_group"
# t.string   "activity"
# t.string   "title"
# t.string   "description"
# t.integer  "open_spots"
class Event < ApplicationRecord
  has_many :children
  belongs_to :location
end
