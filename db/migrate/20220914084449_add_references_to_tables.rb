class AddReferencesToTables < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :practice, foreign_key: true
    add_reference :time_slots, :user, foreign_key: true
    add_reference :time_slots, :room, foreign_key: true
    add_reference :time_slots, :patient, foreign_key: true
    add_reference :rooms, :practice, foreign_key: true
    add_reference :patients, :practice, foreign_key: true
    add_reference :patients, :user, foreign_key: true
  end
end
