class TimeSlot < ApplicationRecord
    belongs_to :coach
    belongs_to :week_day
end
