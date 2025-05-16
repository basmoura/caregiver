class Agency < ApplicationRecord
  has_many :roles
  has_many :users, through: :roles

  validates :name, :address, presence: true
  validates :name, uniqueness: { scope: :address, message: "already taken for this address" }
end
