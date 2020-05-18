class PatientsController < ApplicationController
    before_action :set_patient, only: [:show]

    def index
        @patients = Patient.all
    end

    def show
    end

    def new
        @patient = Patient.new
    end

    def create
        @patient = Patient.new(patient_params)
        if @patient.save
            redirect_to patient_path(@patient)
        else
           render :new 
        end
    end

    private

    def set_patient
        @patient = Patient.find_by_id(params[:id])
    end

    def patient_params
        params.require(:patient).permit(:name,:age)
    end
end