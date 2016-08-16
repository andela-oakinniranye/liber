require 'rails_helper'

RSpec.describe User, type: :model do

  describe "#fullname" do
    it "should return the fullname of the user" do
      expect(subject.fullname).to eql [subject.firstname, subject.lastname].join(' ')
    end
  end

  it "should have many books" do
    expect(subject).to have_many(:books)
  end

  it "should have many notes" do
    expect(subject).to have_many(:notes)
  end
end
