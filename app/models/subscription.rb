# t.integer  "quantity"
# t.integer  "plan_id"
# t.integer  "user_id"
class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :plan
end
