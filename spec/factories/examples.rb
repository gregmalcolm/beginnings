FactoryGirl.define do
  factory :example do
    sequence(:name) { |n| "#{n}mm thick twine" }
    favorite_color "purple"
  end
end
