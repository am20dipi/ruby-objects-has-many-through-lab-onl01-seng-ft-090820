class Appointment
  attr_accessor :date, :patient, :doctor
  
  @@all = []
  
  def self.all
    @@all 
  end
  
  def initialize(date = "", patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end
  
  def patient
    #belongs_to :patient
    #self.patient
  end
  
  def doctor
    #belongs_to :doctor
    #self.doctor
  end
end