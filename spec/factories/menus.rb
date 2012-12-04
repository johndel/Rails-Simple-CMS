FactoryGirl.define do
  factory :menu do
    sequence(:name) { |n| "#{n} Menu" }
  end
end
