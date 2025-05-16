FactoryBot.define do
  factory :role do
    is_care_giver { false }
    is_admin { false }
    is_billing_admin { false }
    is_active { false }
    agency
    user
  end
end
