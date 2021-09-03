class Appointment < ApplicationRecord
    belongs_to :week_day
    belongs_to :coach
end
