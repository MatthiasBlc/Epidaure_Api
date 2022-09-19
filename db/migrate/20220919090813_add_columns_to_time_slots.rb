class AddColumnsToTimeSlots < ActiveRecord::Migration[7.0]
  def change
    add_column :time_slots, :text, :string
    add_column :time_slots, :start, :string
    add_column :time_slots, :end, :string
    add_column :time_slots, :barColor, :string
    add_column :time_slots, :resource, :string

  end
end
