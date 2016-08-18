FactoryGirl.define do

  factory :provider do
    sequence(:name) do |n|
      "Service #{n}"
    end
  end
  
end
