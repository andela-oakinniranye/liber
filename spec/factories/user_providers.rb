FactoryGirl.define do

  factory :user_provider do
    provider
    user
    api_key { SecureRandom.hex }
    access_token { SecureRandom.hex }
    refresh_token { SecureRandom.hex }
  end
  
end
