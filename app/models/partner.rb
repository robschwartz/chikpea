# t.integer  "user_id"
# t.string   "name"
# t.string   "phone"
# t.integer  "booking_rate"
# t.integer  "account_balance"
# t.integer  "total_bookings"
class Partner < ApplicationRecord
  has_many :users
  has_many :locations

  validates :name, presence: true

  def self.add_owner(user, partner_id)
    biz = Partner.find(partner_id)
    biz.user_id = user.id

    biz.save!
  end
end
