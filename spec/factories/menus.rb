FactoryGirl.define do
  factory :menu do
    sequence(:name) { |n| "#{n} Menu" }


	  factory :menu_with_pages do
	    after :create do |menu|
	      (1..3).each do |n|
	      	menu.pages << FactoryGirl.create(:page)
	      end
	    end
	  end
  end


end
