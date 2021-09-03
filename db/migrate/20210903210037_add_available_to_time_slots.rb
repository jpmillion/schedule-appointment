class AddAvailableToTimeSlots < ActiveRecord::Migration[6.1]
  def change
    add_column :time_slots, :available, :boolean
  end
end
