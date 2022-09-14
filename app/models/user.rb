class User < ApplicationRecord
  belongs_to :practice
  has_many :time_slots
  has_many :patients
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JwtDenylist
  #  :recoverable, :rememberable, :validatable

  validates :email, presence: true
end
