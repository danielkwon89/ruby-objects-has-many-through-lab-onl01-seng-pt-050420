require 'pry'

class Doctor
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        Doctor.all << self
    end

    def self.all
        @@all
    end

    def appointments
        # binding.pry
        Appointment.all.select{|appointment| appointment.doctor == self}
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        Appointment.all.map{|appointment| appointment.patient if appointment.doctor == self}
    end
end