class AppointmentsController < ApplicationController

    def new
        @time_slot = TimeSlot.find(params[:time_slot_id])
        @appointment = Appointment.new(time_slot_id: @time_slot.id) 
    end

    def create
        time_slot = TimeSlot.find(params['time_slot_id'])
        time_slot.update(available: false)
        appt = Appointment.new(appointment_params(time_slot))

        if appt.save
            redirect_to appt.user
        else
            render :new
        end
    end

    def destroy
        Appointment.find(params[:id]).destroy
        redirect_to user_path(session[:user_id])
    end

    private

    def appointment_params(time_slot)
        { 
            time_slot_id: time_slot.id,
            coach_id: time_slot.coach.id,
            week_day_id: time_slot.week_day.id,
            user_id: session[:user_id],
            start: time_slot.start,
            end: time_slot.end
        }
    end
end
