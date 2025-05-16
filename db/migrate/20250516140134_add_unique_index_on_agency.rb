class AddUniqueIndexOnAgency < ActiveRecord::Migration[8.0]
  def change
    add_index :agencies, [ :name, :address ], unique: true
    add_index :agencies, :name
    add_index :agencies, :address
  end
end
