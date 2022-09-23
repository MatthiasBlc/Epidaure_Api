class Practice < ApplicationRecord
  has_many :users
  has_many :rooms
  has_many :patients
  validates :name, presence: true, uniqueness: true
end
