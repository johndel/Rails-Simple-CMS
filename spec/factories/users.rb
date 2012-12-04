# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "test_user@greeksolution.gr"
    password "easypass" 
  end
end
