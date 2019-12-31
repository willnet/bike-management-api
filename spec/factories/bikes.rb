FactoryBot.define do

  factory :general_bike, class: Bike do
    serial_number { "AAA" }
    sold_at { nil }
    association :brand, factory: :giant
  end

end
