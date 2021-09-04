class TimeSlotsController < ApplicationController
    def index
        @coach = Coach.find(params[:coach_id])
        @time_slots = @coach.time_slots  
    end
end
