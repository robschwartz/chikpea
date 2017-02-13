FactoryGirl.define do
  factory :location do
    partner_id 1
    primary_location false
    street1 "MyString"
    street2 "MyString"
    country "MyString"
    province "MyString"
    city "MyString"
    neighborhood "MyString"
    postcode "MyString"
    phone "MyString"
    total_bookings 1
  end
end
