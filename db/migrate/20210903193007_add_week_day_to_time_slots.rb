class AddWeekDayToTimeSlots < ActiveRecord::Migration[6.1]
  def change
    add_reference :time_slots, :week_day, null: false, foreign_key: true
  end
end
