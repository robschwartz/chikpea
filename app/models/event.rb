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

  before_save :normalize_date, :normalize_start_time, :normalize_end_time


  def normalize_date

  end

  def normalize_start_time

  end

  def normalize_end_time

  end
end
