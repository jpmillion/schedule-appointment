class TimeSlot < ApplicationRecord
    belongs_to :coach
    belongs_to :week_day

    before_save :set_available_equals_true
    
    def set_available_equals_true
        self.available = true
    end
end
