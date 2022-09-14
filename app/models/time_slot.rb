class TimeSlot < ApplicationRecord
  belongs_to :user
  belongs_to :room
  belongs_to :patient, optional: true
end
