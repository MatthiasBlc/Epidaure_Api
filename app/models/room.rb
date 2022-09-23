class Room < ApplicationRecord
  belongs_to :practice
  has_many :time_slots, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
