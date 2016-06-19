FactoryGirl.define do
  factory :user do
    email "test@factory.com"
    password "fartstand"
    created_at DateTime.now
    updated_at DateTime.now
  end
end
