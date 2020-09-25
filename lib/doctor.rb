class Doctor
  attr_accessor :name 
  
  @@all = []
  
  def self.all
    @@all 
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(date, patient)
    newappt = Appointment.new(date, patient, self)
    @appointments << newappt
  end
  
  def appointments
    #Appointment.all.select do |appointment|
      #appointment.doctor == self 
    #end
    @appointments
  end
  
  def patients
    appointments.all.collect {|appointment| appointment.patients}
  end
  
end