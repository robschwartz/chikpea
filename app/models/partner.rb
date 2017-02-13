# t.integer  "user_id"
# t.string   "name"
# t.string   "phone"
# t.integer  "booking_rate"
# t.integer  "account_balance"
# t.integer  "total_bookings"
class Partner < ApplicationRecord
  belongs_to :user
  has_many :locations
end
