class Room
  attr_accessor :id
  def initialize(attr)
    @id = attr[:id]
    @capacity = attr[:capacity]
    @patients = attr[:patients] || []
  end

  def full?
    @capacity == @patients.length
  end

  def add_patient(patient)
    if full?
      raise "Room is full"
    else
      @patients << patient
    end
  end
end