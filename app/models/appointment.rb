class Appointment < ApplicationRecord
    belongs_to :week_day
    belongs_to :coach
    belongs_to :user
end
