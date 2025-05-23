require 'rails_helper'

RSpec.describe Role, type: :model do
  describe 'validations' do
    subject do
      FactoryBot.build(:role)
    end

    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is invalid with more than 2 roles' do
      subject.is_care_giver = true
      subject.is_billing_admin = true
      subject.is_admin = true

      expect(subject).not_to be_valid
    end
  end

  describe 'validate associations' do
    it { should belong_to(:user) }
    it { should belong_to(:agency) }
  end
end
