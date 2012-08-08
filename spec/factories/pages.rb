FactoryGirl.define do
   
  factory :page do
    sequence(:name) { |n| "#{n} Page" }
    title "A CMS Page"
    meta_description "Some Meta Description"
    content "My Main Content"
    permalink { Factory.next(:permalink) }
    active true
  end
    
  sequence :permalink do |n|
    "permalink-#{n}"
  end
  
end
