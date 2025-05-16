class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable, :registerable
  devise :database_authenticatable, :recoverable, :rememberable, :validatable, :confirmable

  has_many :roles
  has_many :agencies, through: :roles
end
