class ChangeBooleanDefaultValuesOnRoles < ActiveRecord::Migration[8.0]
  def change
    change_column_default :roles, :is_active, from: nil, to: true
    change_column_default :roles, :is_care_giver, from: nil, to: false
    change_column_default :roles, :is_admin, from: nil, to: false
    change_column_default :roles, :is_billing_admin, from: nil, to: false
  end
end
