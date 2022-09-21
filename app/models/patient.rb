class Patient < ApplicationRecord
  belongs_to :practice
  belongs_to :user, optional: true
  has_many :time_slots, dependent: :destroy
end
