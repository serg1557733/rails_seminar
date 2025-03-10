class Patient
  attr_accessor :room, :id, :name

  def initialize(attr = {})
    @id = attr[:id]
    @name = attr[:name]
    @cured = attr[:cured] || false
    @blood_type = attr[:blood_type]
  end

  def cured?
    @cured
  end

  def cure!
    @cured = true
  end
end
patient_1 = Patient.new(id: 1, name: "John Doe", blood_type: "O+")
room_blue = Room.new(id: 5, capacity: 10, patients: patient_1)