FactoryGirl.define do
  factory :plan do
    session_limit 1
    description "MyString"
    name "MyString"
    interval "MyString"
    currency "MyString"
    amount 1
    stripe_id "MyString"
  end
end
