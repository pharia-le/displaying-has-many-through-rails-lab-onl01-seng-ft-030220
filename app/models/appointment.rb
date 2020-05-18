class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def doctor_name
    self.doctor ? self.doctor.name : nil
  end

  def patient_name
    self.patient ? self.patient.name : nil
  end

  def date
    self.appointment_datetime.strftime(' %B %e, %Y')
  end

  def time
    self.appointment_datetime.strftime('%H:%M')
  end

  def readable_time
    self.appointment_datetime.strftime('%B %e, %Y at %H:%M')
  end

end
