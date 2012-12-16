# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :setting do
    meta_key ""
    meta_value ""

    factory :homepage_setting do
        meta_key "homepage"
        meta_value "1"
        after :create do |page|
            FactoryGirl.create(:page, id: 1)
        end
    end
  end
end
