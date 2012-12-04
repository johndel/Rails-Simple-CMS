# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :page_menu_mapping do
    sequence(:page_id) { |n| n }
    sequence(:menu_id) { |n| n }
    sequence(:page_position) { |n| n }
    
    factory :mapping_one do
      page_id 1
      menu_id 1
      page_position 1
    end
  end  
end
