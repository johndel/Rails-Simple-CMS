# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :page_menu_mapping do
    sequence(:page_id) { |n| n+1 }
    sequence(:menu_id) { |n| n+1 }
    sequence(:page_position) { |n| n+1 }

    trait :has_page do
      after(:create) do |page_menu_mapping|
        page_menu_mapping.page = FactoryGirl.create(:page)
      end
    end

    trait :has_menu do
      after(:create) do |page_menu_mapping|
        page_menu_mapping.menu = FactoryGirl.create(:menu)
      end
    end
  end
end
