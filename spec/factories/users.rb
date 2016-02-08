FactoryGirl.define do
  factory :user do
    email "batman@example.com"
    password "batcave42"
    confirmed_at Time.now

    trait :admin do
      roles ["admin"]
      email "alfred@example.com"
      password "jeeves999"
      confirmed_at Time.now
    end
  end
end
