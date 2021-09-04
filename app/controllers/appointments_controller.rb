class AppointmentsController < ApplicationController

    def new
        @user = User.find(params[:user_id])
        @appointment = Appointment.new(user_id: @user.id) 
    end

    def create
        
    end
end
