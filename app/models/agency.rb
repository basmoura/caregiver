class Agency < ApplicationRecord
  validates :name, :address, presence: true
  validates :name, uniqueness: { scope: :address, message: "already taken for this address" }
end
