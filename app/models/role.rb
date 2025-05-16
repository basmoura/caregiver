class Role < ApplicationRecord
  belongs_to :agency
  belongs_to :user

  validate :roles_combination

 # caregiver - admin
 # caregiver - billing-admin
 # admin - billing-admin

 private

 def roles_combination
   if is_care_giver && is_admin && is_billing_admin
     errors.add(:base, "User can't have more than 2 roles at same time")
   end
 end
end
