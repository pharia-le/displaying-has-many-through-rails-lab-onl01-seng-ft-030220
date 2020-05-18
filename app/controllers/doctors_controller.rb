class DoctorsController < ApplicationController
    before_action :set_doctor, only: [:show]

    def show
    end

    def new
        @doctor = Doctor.new
    end

    def create
        @doctor = Doctor.new(doctor_params)
        if @doctor.save
            redirect_to doctor_path(@doctor)
        else
            render :new
        end
    end

    private

    def set_doctor
        @doctor = Doctor.find_by_id(params[:id])
    end

    def doctor_params
        params.permit(:doctor).permit(:name,:department)
    end

end