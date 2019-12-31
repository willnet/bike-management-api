FactoryBot.define do
  
  factory :giant, class: Brand do
    name { "GIANT" }
  end

  factory :nil_brand, class: Brand do
    name { nil }
  end
  
end
