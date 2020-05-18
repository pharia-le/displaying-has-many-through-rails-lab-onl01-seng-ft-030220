class AppointmentsController < ApplicationController
    before_action :set_appointment, only: [:show]

    def show
    end
    
    def new
        @appointment = Appointment.new
    end

    def create
        @appointment = Appointment.new(appointment_params)
        if @appointment.save
            redirect_to appointment_path(@appointment)
        else
            render :new
        end
    end

    private

    def set_appointment
        @appointment = Appointment.find_by_id(params[:id])
    end

    def appointment_params
        params.require(:appointment).permit(:appointment_datetime)
    end
end