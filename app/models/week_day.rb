class WeekDay < ApplicationRecord
    has_many :time_slots
    has_many :appointments
end
