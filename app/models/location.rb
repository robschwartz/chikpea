# t.integer  "partner_id"
# t.boolean  "primary_location"
# t.string   "street1"
# t.string   "street2"
# t.string   "country"
# t.string   "province"
# t.string   "city"
# t.string   "neighborhood"
# t.string   "postcode"
# t.string   "phone"
# t.integer  "total_bookings"

class Location < ApplicationRecord
  belongs_to :partner
  has_many :sessions
end
