FactoryGirl.define do

  factory :note do
    sequence :name do |n|
      "Note #{n}"
    end

    book
    content "Content of note"
  end
  
end
