FactoryBot.define do
  factory :something_brand_name, class: Brand do
    name { Faker::Name.name }
  end

  factory :brand_name_is_giant, class: Brand do
    name { 'GIANT' }
  end

  factory :nil_brand_name, class: Brand do
    name { nil }
  end
end
