require 'rails_helper'

RSpec.describe User, type: :model do
  subject{ create(:user) }

  describe "#fullname" do
    it "should return the fullname of the user" do
      expect(subject.fullname).to eql [subject.firstname, subject.lastname].join(' ')
    end
  end
end

# describe "#books" do
#   before do
#     create(:book, user: subject)
#   end
#
#   it "should have many books" do
#     expect(subject).to have_many(:books)
#   end
# end
#
# describe "#notes" do
#   it "should have many notes" do
#     expect(subject).to have_many(:notes)#.through()
#   end
# end
