class Practice < ApplicationRecord
  has_many :users
  has_many :rooms
  has_many :patients
end
