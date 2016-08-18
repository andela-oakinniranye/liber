FactoryGirl.define do

  factory :user do
    sequence :firstname do |n|
      "FirstName #{n}"
    end

    sequence :lastname do |n|
      "LastName #{n}"
    end

    sequence :email do |n|
      "user-#{n}@example.com"
    end

    password { SecureRandom.hex }
  end
  
end
