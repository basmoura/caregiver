class CreateRoles < ActiveRecord::Migration[8.0]
  def change
    create_table :roles do |t|
      t.boolean :is_care_giver
      t.boolean :is_admin
      t.boolean :is_billing_admin
      t.boolean :is_active
      t.references :agency, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
