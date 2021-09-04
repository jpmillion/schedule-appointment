class Appointment < ApplicationRecord
    belongs_to :week_day
    belongs_to :coach
    belongs_to :user
    belongs_to :time_slot

    before_destroy :update_time_slot_availability

    def update_time_slot_availability
        self.time_slot.update(available: true) 
    end
end
