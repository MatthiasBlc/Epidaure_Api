class Room < ApplicationRecord
  belongs_to :practice
  has_many :time_slots, dependent: :destroy
end
