require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    described_class.new(email: "bowie@zggy.cc", password: "password")
  end

  it "is valid with required fields" do
    expect(subject).to be_valid
  end

  it "is invalid without email" do
    subject.email = nil
    expect(subject).not_to be_valid
  end

  it "is invalid without a password" do
    subject.password = nil
    expect(subject).not_to be_valid
  end
end
