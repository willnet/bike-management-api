FactoryBot.define do
  factory :general_bike, class: Bike do
    serial_number { Faker::IDNumber.valid }
    sold_at { nil }
    association :brand, factory: :something_brand_name
  end

  factory :bike_made_by_giant, class: Bike do
    serial_number { 'giant_brand_bike' }
    sold_at { nil }
    association :brand, factory: :brand_name_is_giant
  end

  factory :nil_brand_id, class: Bike do
    serial_number { Faker::IDNumber.valid }
    sold_at { nil }
    brand_id { nil }
  end
end
