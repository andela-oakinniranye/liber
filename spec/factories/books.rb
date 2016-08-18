FactoryGirl.define do

  factory :book do
    sequence :name do |n|
      "Book #{n}"
    end

    user
  end
  
end
