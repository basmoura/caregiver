require 'rails_helper'

RSpec.describe Agency, type: :model do
  describe 'validations' do
    subject { FactoryBot.build(:agency) }

    it "is valid with valid data" do
      expect(subject).to be_valid
    end

    it "is invalid without a name" do
      subject.name = nil
      expect(subject).not_to be_valid
    end

    it "is invalid without an address" do
      subject.address = nil
      expect(subject).not_to be_valid
    end

    it "is invalid with same name and address" do
      FactoryBot.create(:agency)
      expect(subject).not_to be_valid
    end
  end

  describe 'associations' do
    it { should have_many(:roles) }
    it { should have_many(:users).through(:roles) }
  end
end
