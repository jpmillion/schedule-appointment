class TimeSlot < ApplicationRecord

    belongs_to :coach
    belongs_to :week_day
    has_one :appointment

    after_create :set_available_equals_true
    
    def set_available_equals_true
        self.update(available: true)
    end 
end
