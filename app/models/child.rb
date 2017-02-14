# t.string   "first_name"
# t.string   "last_name"
# t.string   "gender"
# t.date     "birthdate"
# t.datetime "user_id"
class Child < ApplicationRecord
  belongs_to :user
  has_many :events
end
