FactoryGirl.define do
  factory :page do
    sequence(:name) { |n| "#{n} Page" }
    title "A CMS Page"
    meta_description "Some Meta Description"
    content "My Main Content"
    sequence(:permalink) { |n| "permalink-#{n}" }
    active true
  end

end
